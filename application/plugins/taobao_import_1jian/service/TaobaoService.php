<?php

namespace app\plugins\taobao_import_1jian\service;

use think\Db;
use app\service\PluginsService;


class TaobaoService
{

    public static function Upload($params = [])
    {
        $r = ["status" => 1, "message" => "成功"];

        $goods_spec_type = "";
        $goods_spec_value = "";
        if (isset($params["goods_spec_type"])) {
            $goods_spec_type = $params["goods_spec_type"];
            unset($params["goods_spec_type"]);
        }

        if (isset($params["goods_spec_value"])) {
            $goods_spec_value = $params["goods_spec_value"];
            unset($params["goods_spec_value"]);
        }

        $goods_content_app = "";
        $goods_content_app_txt = "";

        $params["content_web"] = htmlspecialchars_decode($params["goods_content_app_txt"]) . htmlspecialchars_decode($params["content_web"]);


        $goods_content_app_txt = htmlspecialchars_decode($params["goods_content_app_txt"]);
        $goods_content_app_txt = str_replace("<br/>", "\n", $goods_content_app_txt);
        $goods_content_app_txt = str_replace("</p>", "\n", $goods_content_app_txt);
        $goods_content_app_txt = str_replace("<p>", "", $goods_content_app_txt);

        $params["goods_content_app_txt"] = $goods_content_app_txt;

        if (isset($params["goods_content_app"]) && $params["goods_content_app"] != "") {
            $goods_content_app = $params["goods_content_app"];
            if ($goods_content_app != "") {

                if (isset($params["goods_content_app_txt"]) && $params["goods_content_app_txt"] != "") {
                    $goods_content_app_txt = $params["goods_content_app_txt"];
                    unset($params["goods_content_app_txt"]);
                }
                $goods_content_app = explode("|", $goods_content_app);


            }

        }

        if (isset($params["goods_content_app"]))
            unset($params["goods_content_app"]);
        if (isset($params["goods_content_app_txt"]))
            unset($params["goods_content_app_txt"]);

        $category_id = $params["category_id"];
        unset($params["category_id"]);
        $category_ids = "";
        if (isset($params["category_ids"])) {
            $category_ids = $params["category_ids"];
            unset($params["category_ids"]);
            $category_ids = explode(",", $category_ids);
        }


        $params["title_color"] = "";
        $params["simple_desc"] = "";
        $params["model"] = "";
        $params["place_origin"] = 0;

        $goods_photos = $params["goods_photos"];
        $goods_photos = explode("|", $goods_photos);
        $params["photo_count"] = count($goods_photos);
        unset($params["goods_photos"]);


        //判断是否需要虚拟销量
        if ($params["max_virtual_sales_count"] > 0) {
            $params["sales_count"] = rand($params["min_virtual_sales_count"], $params["max_virtual_sales_count"]);
            $params["access_count"] = $params["sales_count"] * 2 + rand(0, 100);
        }

        unset($params["max_virtual_sales_count"]);
        unset($params["min_virtual_sales_count"]);
        $params["add_time"] = time();
        $params["upd_time"] = time();

        $ver = APPLICATION_VERSION;
        $ver = substr($ver, 1);

        if (version_compare($ver, '1.7.0', '>=')) {
            // echo "判断版本号成功!\n";
            $params["spec_base"] = "";
        }

        if ($goods_spec_type != "" && $goods_spec_type != "[]" && $goods_spec_value != "null") {

            $goods_spec_type = htmlspecialchars_decode($goods_spec_type);
            $goods_spec_value = htmlspecialchars_decode($goods_spec_value);

            $goods_spec_type = str_replace("&phi;", "φ", $goods_spec_type);
            $goods_spec_type = str_replace("&phi", "φ", $goods_spec_type);
            $goods_spec_value = str_replace("&phi;", "φ", $goods_spec_value);
            $goods_spec_value = str_replace("&phi", "φ", $goods_spec_value);


            $goods_spec_type = json_decode($goods_spec_type, true);

            $goods_spec_value = json_decode($goods_spec_value, true);

            $spec_base_array = [];
            foreach ($goods_spec_type as $v) {
                $row = array();
                $row["title"] = $v["name"];
                $values = $v["values"];
                $values = explode("|", $values);
                $value = [];
                foreach ($values as $k2 => $v2) {
                    list($name, $images) = explode(";", $v2);
                    $value[] = $name;
                }
                $row["value"] = $value;
                $spec_base_array[] = $row;
            }

            if (version_compare($ver, '1.7.0', '>=') && count($spec_base_array) > 0) {
                $params["spec_base"] = json_encode($spec_base_array);
            }
        }


        $is_exist_many_spec = 0;
        if (is_array($goods_spec_type) && count($goods_spec_type) > 0) {

            $is_exist_many_spec = 1;
        }
        $params["is_exist_many_spec"] = $is_exist_many_spec;

        $goods_id = Db::name("goods")->insertGetId($params);


        if ($goods_id > 0) {
        } else {
            $r = ["status" => 0, "message" => "插入goods失败"];
            return $r;
        }

        //写入到分类

        if (isset($category_ids) && is_array($category_ids) && count($category_ids) > 0) {
            foreach ($category_ids as $v) {
                $category = array();
                $category["goods_id"] = $goods_id;
                $category["category_id"] = $v;
                $category["add_time"] = time();
                Db::name("goods_category_join")->insert($category);
            }

        } else {
            $category = array();
            $category["goods_id"] = $goods_id;
            $category["category_id"] = $category_id;
            $category["add_time"] = time();

            Db::name("goods_category_join")->insert($category);
        }

//相册图片插入表
        if (count($goods_photos) > 0) {
            $goods_photo = [];
            foreach ($goods_photos as $k => $v) {
                $row = array();
                $row["images"] = $v;
                $row["is_show"] = 1;
                $row["sort"] = $k;
                $row["goods_id"] = $goods_id;
                $row["add_time"] = time();
                $goods_photo[] = $row;
            }
            Db::name('goods_photo')->insertAll($goods_photo);
        }

//插入到手机详情

        if ($goods_content_app != "" && count($goods_content_app) > 0) {
            foreach ($goods_content_app as $k => $v) {
                $row = array();

                $row["images"] = $v;
                $row["goods_id"] = $goods_id;

                $row["content"] = "";
                if ($k == 0 && $goods_content_app_txt != "")
                    $row["content"] = $goods_content_app_txt;
                $row["add_time"] = time();
                $row["sort"] = $k;
                $InserData[] = $row;

            }
            Db::name('goods_content_app')->insertAll($InserData);


        }

//插入到goods_spec_type
        if ($goods_spec_type != "" && is_array($goods_spec_type) && count($goods_spec_type) > 0) {

            if (count($goods_spec_type) > 0) {
                $InserData = [];
                foreach ($goods_spec_type as $v) {
                    $row = array();
                    $row["name"] = $v["name"];

                    $values = $v["values"];
                    $values = explode("|", $values);
                    $value = array();
                    foreach ($values as $vv) {
                        list($name, $images) = explode(";", $vv);
                        $value[] = ["name" => $name, "images" => $images];
                    }
                    $row["value"] = json_encode($value);
                    $row["goods_id"] = $goods_id;
                    $row["add_time"] = time();
                    $InserData[] = $row;
                }
                Db::name('goods_spec_type')->insertAll($InserData);


//开始插入s_goods_spec_base

                foreach ($goods_spec_value as $k => $v) {
                    $values = $v["values"];//规格名称 白色|XL
                    $price = $v["price"];
                    $inventory = $v["inventory"];
                    $InserySpecBase = ["price" => $price, "inventory" => $inventory];
                    $InserySpecBase["goods_id"] = $goods_id;
                    $InserySpecBase["weight"] = 0.5;
                    $InserySpecBase["coding"] = "";
                    $InserySpecBase["barcode"] = "";
                    $InserySpecBase["original_price"] = number_format((floatval($price) * 1.2), 0, ".", "");
//$InserySpecBase["original_price"]=$price*1.2;
                    $InserySpecBase["add_time"] = time();
//插入到 goods_spec_base

                    $goods_spec_base_id = Db::name("goods_spec_base")->insertGetId($InserySpecBase);
                    if ($goods_spec_base_id > 0) {

                        $Insert_goods_spec_value = [];
                        $values = explode("|", $values);
                        foreach ($values as $k2 => $v2) {
                            $row = array();
                            $row["goods_spec_base_id"] = $goods_spec_base_id;
                            $row["value"] = $v2;
                            $row["goods_id"] = $goods_id;
                            $row["add_time"] = time();
                            $Insert_goods_spec_value[] = $row;

                        }
                        Db::name('goods_spec_value')->insertAll($Insert_goods_spec_value);
                    }
                }

            }
        } else { //假如没有多规格
            $InserySpecBase = ["price" => $params["price"], "inventory" => $params["inventory"]];
            $InserySpecBase["goods_id"] = $goods_id;
            $InserySpecBase["weight"] = 0.5;
            $InserySpecBase["coding"] = "";
            $InserySpecBase["barcode"] = "";
            $InserySpecBase["original_price"] = $params["original_price"];
            $InserySpecBase["add_time"] = time();
//插入到 goods_spec_base
            Db::name("goods_spec_base")->insertGetId($InserySpecBase);
        }

        $r["goods_id"] = strval($goods_id);
        return $r;
    }

    public static function SetPluginEnable($params = [])
    {
        $UpdateData = [];

        $UpdateData["is_enable"] = 1;
        Db::name('plugins')
            ->where('plugins', "=", 'taobao_import_1jian')
            ->update($UpdateData);
    }

    public static function GetRelation($params = [])
    {
        $config = [];
        $ret = PluginsService::PluginsData('taobao_import_1jian', [], false);
        if ($ret['code'] == 0) {

            if (isset($ret['data'])) {

                $config = $ret['data'];


            }
        }

        if (!isset($config["id"]) || empty($config["id"])) {
            return;
        }

        if (isset($params["order"]) && isset($params["order"]["items"])) {
            $items =& $params["order"]["items"];
            $goods_ids = [];
            foreach ($items as $k => $v) {

                $goods_ids[] = $v["goods_id"];
            }
            if (count($goods_ids) > 0) {
                $goods_ids = implode(",", $goods_ids);
                $r = file_get_contents("https://www.1jian.vip/ShopxoJson/GetGoodsRelation.php?shopxo_domains_id=" . $config["id"] . "&NewIDs=" . $goods_ids);
                if ($r != "") {
                    $r = json_decode($r, true);
                    if ($r["status"] == 1) {
                        $data = $r["data"];
                        foreach ($items as $k => &$v) {
                            foreach ($data as $v2) {
                                if ($v2["NewID"] == $v["goods_id"]) {
                                    $v["url"] = $v2["url"];
                                    $source = "淘宝";
                                    if (strstr($v2["url"], "tmall"))
                                        $source = "天猫";
                                    if (strstr($v2["url"], "1688"))
                                        $source = "阿里巴巴";

                                    $v["title"] = $v["title"] . " " . "来源:{$source} id:" . $v2["OriginalID"];
                                }
                            }

                        }
                    }
                }
            }


        }


    }

}

?>
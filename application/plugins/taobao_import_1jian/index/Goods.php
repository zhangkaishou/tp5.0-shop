<?php
namespace app\plugins\taobao_import_1jian\index;

use think\Controller;
use app\plugins\taobao_import_1jian\service\TaobaoService;
use app\service\PluginsService;
use app\plugins\taobao_import_1jian\service\UeditorService;

/**
 * test - 前端独立页面入口
 * @author   Devil
 * @blog     http://gong.gg/
 * @version  0.0.1
 * @datetime 2016-12-01T21:51:08+0800
 */
class Goods extends Controller
{
    // 前端页面入口
    public function index($params = [])
    {
       // echo APPLICATION_VERSION;
		//exit;
        // 数组组装
    
        $this->assign('data', ['hello', 'world!']);
        $this->assign('msg', 'hello world! index');
        return $this->fetch('../../../plugins/view/taobao_import_1jian/index/index/index');
    }


  
      public function UploadImage($params = [])
      {
       
            //  $rs= input();
          
        $r=["status"=>1,"message"=>"成功"];

        if(isset($params["urls"]))
        {
           
     $urls=$params["urls"];
   
     if($urls!="")
     {
     
        $urls=explode(";",$urls);
     
            $row=array();
            $row["action"]="catchimage";
            $row["encode"]="utf-8";
            $row["id"]="WU_FILE_0";
            $row["name"]="weblog.jpg";
            $row["type"]="image/jpeg";
            $row["size"]="1";
            $row["path_type"]="goods";
            $row["source"]=$urls;
          
            $ret = UeditorService::Run($row);
            if($ret['code'] == 0)
            {
                return json($ret['data']);
            }
            return $ret['msg'];
        

     }
    }
       
       return json($r);
      }


      public function UploadGoods($params = [])
      {
          $UploadData=[];
   $appkey="";
        $ret = PluginsService::PluginsData('taobao_import_1jian', [], false);
    
          if($ret['code'] == 0)
          {
             
              if(isset( $ret['data']))
              {
               
                      $data=$ret['data'];
               
                 if(isset($data["appkey"]))
                 {
                    $appkey=$data["appkey"];
                 }
  
                  
              }
             
          } else {
             // return $ret['msg'];
             $r=["status"=>0,"message"=>"找不到plugin配置"]; 
             return json($r);
          }
        
if($appkey==$params["appkey"])
{
    $r=["status"=>0,"message"=>"appkey错误"]; 
    return json($r);
}




        $r=["status"=>1,"message"=>"成功"];
if(!isset($params["title"]) || $params["title"]=="")
{
    $r=["status"=>0,"message"=>"商品名称不可为空"]; 
    return json($r);
}
$UploadData["title"]=$params["title"];

if(!isset($params["inventory"]) || $params["inventory"]=="")
{
    $r=["status"=>0,"message"=>"库存不可为空"]; 
    return json($r);
}
$UploadData["inventory"]=$params["inventory"];
if(!isset($params["inventory_unit"]) || $params["inventory_unit"]=="")
{
    $r=["status"=>0,"message"=>"库存单位不可为空"]; 
    return json($r);
}
$UploadData["inventory_unit"]=$params["inventory_unit"];
if(!isset($params["images"]) || $params["images"]=="")
{
    $r=["status"=>0,"message"=>"主图不可为空"]; 
    return json($r);
}
$UploadData["images"]=$params["images"];
if(!isset($params["min_price"]) || $params["min_price"]=="")
{
    $r=["status"=>0,"message"=>"最低价格不可为空"]; 
    return json($r);
}
$UploadData["min_price"]=$params["min_price"];
if(!isset($params["max_price"]) || $params["max_price"]=="")
{
    $r=["status"=>0,"message"=>"最高价格不可为空"]; 
    return json($r);
}
$UploadData["max_price"]=$params["max_price"];

if(!isset($params["give_integral"]) || $params["give_integral"]=="")
{
    $r=["status"=>0,"message"=>"购买赠送积分不可为空"]; 
    return json($r);
}
$UploadData["give_integral"]=$params["give_integral"];

if(!isset($params["content_web"]) || $params["content_web"]=="")
{
    $r=["status"=>0,"message"=>"电脑端详情不可为空"]; 
    return json($r);
}
$UploadData["content_web"]=$params["content_web"];
if(!isset($params["category_id"]) || $params["category_id"]=="")
{
    $r=["status"=>0,"message"=>"分类不可为空"]; 
    return json($r);
}
$UploadData["category_id"]=$params["category_id"];

if(isset($params["category_ids"]))
$UploadData["category_ids"]=$params["category_ids"];
/*  
if(!isset($params["goods_content_app"]) || $params["goods_content_app"]=="")
{
    $r=["status"=>0,"message"=>"手机端详情图不可为空"]; 
    return json($r);
}
*/

if(!isset($params["goods_photos"]) || $params["goods_photos"]=="")
{
    $r=["status"=>0,"message"=>"相册图片不可为空"]; 
    return json($r);
}
$UploadData["goods_photos"]=$params["goods_photos"];
$UploadData["min_virtual_sales_count"]=$params["min_virtual_sales_count"];
$UploadData["max_virtual_sales_count"]=$params["max_virtual_sales_count"];

$UploadData["goods_spec_type"]=$params["goods_spec_type"];
$UploadData["goods_spec_value"]=$params["goods_spec_value"];
$UploadData["goods_content_app_txt"]=$params["goods_content_app_txt"];
$UploadData["goods_content_app"]=$params["goods_content_app"];
if(!isset($params["video"]))
$params["video"]="";
$UploadData["video"]=$params["video"];
$UploadData["price"]=$params["price"];
$UploadData["original_price"]=$params["original_price"];
$UploadData["min_original_price"]=$params["min_original_price"];
$UploadData["max_original_price"]=$params["max_original_price"];
if(isset($params["appkey"]))
unset($params["appkey"]);
$r=[];
try{
        $r=TaobaoService::Upload($UploadData);
}
        catch(Exception $e)
 {
 //echo 'Message: ' .$e->getMessage();
 $r=["status"=>0,"message"=>"异常：".$e->getMessage()];
 }
return json($r);
}

    
      
}
?>
<?php
namespace app\plugins\taobao_import_1jian\admin;

use think\Controller;
use app\service\PluginsService;
use app\service\GoodsService;

use app\service\PluginsAdminService;
use app\plugins\taobao_import_1jian\service\TaobaoService;
/**
 * 批量导入淘宝商品 - 后台管理
 * @author   Devil
 * @blog     http://gong.gg/
 * @version  0.0.1
 * @datetime 2016-12-01T21:51:08+0800
 */
class Admin extends Controller
{

    
    // 后台管理入口
    public function index($params = [])
    {
       TaobaoService::SetPluginEnable();
$data=array();
        $RemainUploadNum=0;
        
        $ret = PluginsService::PluginsData('taobao_import_1jian', [], false);
          if($ret['code'] == 0)
          {
             
              if(isset( $ret['data']))
              {
               
                      $data=$ret['data'];
               
                 if(!isset($data["appkey"]))
                 {
                    $data["appkey"]="";
                 }
  
                  
              }
             
          } else {
              return $ret['msg'];
          }

        
        $url = "https://www.1jian.vip/ShopxoJson/GetShopXoDomainInfo.php";  
        $domain=$_SERVER['HTTP_HOST'];
        $IsHttps=$this->is_https();
        if(strstr($domain,"pj12.com") || strstr($domain,"happyeverybody.com") || strstr($domain,"xabrt.cn") || strstr($domain,"guanlin001.com") || strstr($domain,"hkmtf.cn"))
        $IsHttps=1;
        
$conf="IsHttps={$IsHttps}&domain={$domain}";
        $rs = $this->http_request($url, $conf); 
    
        if($rs!="")
        { 
            
        $rs=json_decode($rs,true);
        if(count($rs)>0)
        {
         
            if($rs["appkey"]=="")
            {
             
              
                $data["RemainUploadNum"]=$rs["RemainUploadNum"];
                $data["UpdateTime"]=$rs["UpdateTime"];
            }
            else
            {
              
                $data=$rs;
            }
           if(!isset($data["id"]))
           {
            $data=$rs;
           }

        }
    }
  
    PluginsService::PluginsDataSave(['plugins'=>'taobao_import_1jian', 'data'=>$data]);
    if(!isset($data["appkey"]))
    {
       $data["appkey"]="";
    }
        $this->assign('RemainUploadNum', $data["RemainUploadNum"]);
        $this->assign('data', $data);
        // 数组组装


      $OriginalConfig=[];  
$OriginalConfigList=PluginsAdminService::PluginsList();
foreach($OriginalConfigList["data"] as $k=>$v)
{
if($k=="taobao_import_1jian")
{
$OriginalConfig=$v;
break;
}

}

 $this->assign('OriginalConfig', $OriginalConfig);
        $this->assign('goods_category_list', GoodsService::GoodsCategoryAll());
        return $this->fetch('../../../plugins/view/taobao_import_1jian/admin/index');
    }


        // HTTP请求（支持HTTP/HTTPS，支持GET/POST）  
        function http_request($url, $data = null)  
        {  
            $curl = curl_init();  
            curl_setopt($curl, CURLOPT_URL, $url);  
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);  
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);  
            if (! empty($data)) {  
                curl_setopt($curl, CURLOPT_POST, 1);  
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);  
            }  
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);  
            $output = curl_exec($curl);  
            curl_close($curl);  
            return $output;  
        }

        function is_https() {

  if ( !empty($_SERVER['SERVER_PORT']) &&$_SERVER['SERVER_PORT'] == 443) {
                return 1;
            }

            if ( !empty($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) !== 'off') {
                return 1;
            } elseif ( isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https' ) {
                return 1;
            } elseif ( !empty($_SERVER['HTTP_FRONT_END_HTTPS']) && strtolower($_SERVER['HTTP_FRONT_END_HTTPS']) !== 'off') {
                return 1;
            }

            
            return 0;
        }
//保存链接
        function SaveUrls($params = [])
        {
            

            if(!isset($params["IsGetVideo"]))
            $params["IsGetVideo"]=0;

            if(!isset($params["IsGetComment"]))
            $params["IsGetComment"]=0;

if($params["pid"]=="")
{
return DataReturn('请选择商品分类', -1, "");  
}
$pids=$params["pid"];

$pps=explode(",",$params["pid"]);
if(count($pps)>0)
$params["pid"]=$pps[0];
$params["pids"]=$pids;
            $data=array();
            $RemainUploadNum=0;
            
            $ret = PluginsService::PluginsData('taobao_import_1jian', [], false);
              if($ret['code'] == 0)
              {
                 
                  if(isset( $ret['data']))
                  {
                   
                          $data=$ret['data'];
                   
                     
      
                      
                  }
                 
              } else {
                return DataReturn('插件未正常安装，请联系开发者36105155', -1, "");
              }   
          

if(!isset($data["appkey"]) || $data["appkey"]=="")
{
return DataReturn('appkey异常，请联系开发者36105155', -1, "");
}

$url = "https://www.1jian.vip/ShopxoJson/SaveTaobaoLinkNew.php";
$params["shopxo_domains_id"]=$data["id"];
$params["appkey"]=$data["appkey"];
$params["domain"]=$data["domain"];
$params["GoodsType"]=0;

$p=http_build_query($params);


 $r = $this->http_request($url, $p);  


if($r=="")
{
    return DataReturn('提交链接服务器异常，请联系开发者36105155', -1, "");
}
$r=json_decode($r,true);
if($r["status"]==0)
{
    return DataReturn($r["message"], -1, "");
}
return DataReturn('操作成功', 0, "");
      
        }
}
?>
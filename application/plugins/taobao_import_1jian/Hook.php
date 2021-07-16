<?php
namespace app\plugins\taobao_import_1jian;

use think\Controller;
use app\plugins\taobao_import_1jian\service\TaobaoService;
/**
 * 批量导入淘宝商品 - 钩子入口
 * @author   Devil
 * @blog     http://gong.gg/
 * @version  0.0.1
 * @datetime 2016-12-01T21:51:08+0800
 */
class Hook extends Controller
{
    // 应用响应入口
    public function run($params = [])
    {
        // 是否控制器钩子
        // is_backend 当前为后端业务处理
        // hook_name 钩子名称
        if(isset($params['is_backend']) && $params['is_backend'] === true && !empty($params['hook_name']))
        {


            
           if(!empty($params['hook_name']))
        {
            $ret = '';
            switch($params['hook_name'])
            {
                // 用户中心左侧导航
                case 'plugins_service_order_handle_end' :
                  //  $ret = TaobaoService::GetRelation($params);
                    break;

          case 'plugins_view_admin_order_list_operation':
          
          break;
                default :
                    $ret = '';
            }
          
            return $ret;
        }
    }
    }
}
?>
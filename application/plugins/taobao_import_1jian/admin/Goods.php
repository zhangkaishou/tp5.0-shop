<?php
// +----------------------------------------------------------------------
//qq 36105155
// +----------------------------------------------------------------------
namespace app\plugins\taobao_import_1jian\admin;

use think\Controller;
use app\plugins\taobao_import_1jian\service\TaobaoService;
use app\service\PluginsService;


class Goods extends Controller
{

    /**
     * 等级页面
 *qq 36105155 https://www.1jian.vip
     */
    public function index($params = [])
    {
        $ret = TaobaoService::LevelDataList();
        if($ret['code'] == 0)
        {
            $this->assign('data_list', $ret['data']);
            $this->assign('params', $params);
            return $this->fetch('../../../plugins/view/taobao_import_1jian/admin/goods/index');
        } else {
            return $ret['msg'];
        }
    }


    public function UploadImg($params = [])
    {

     //  $rs= input();
       print_r("123");
       exit;
        $r=["status"=>1,"message"=>"成功"];
     $urls=$params["urls"];
     if($urls!="")
     {
        $urls=explode(";",$urls);

     }

       
       return json($r);
      
    }
    /**
     * 等级编辑
     * @author   Devil
     * @blog     http://gong.gg/
     * @version  1.0.0
     * @datetime 2019-02-07T08:21:54+0800
     * @param    [array]          $params [输入参数]
     */
    public function saveinfo($params = [])
    {
        // 数据
        $data = [];
        if(!empty($params['id']))
        {
            $data_params = [
                'get_id'        => $params['id'],
            ];
            $ret = Service::LevelDataList($data_params);
            $data = empty($ret['data']) ? [] : $ret['data'];
        }
        $this->assign('data', $data);
        
        return $this->fetch('../../../plugins/view/taobao_import_1jian/admin/goods/saveinfo');
    }

    /**
     * 等级保存
     * @author   Devil
     * @blog     http://gong.gg/
     * @version  1.0.0
     * @datetime 2019-02-07T08:21:54+0800
     * @param    [array]          $params [输入参数]
     */
    public function save($params = [])
    {
        // 是否ajax请求
        if(!IS_AJAX)
        {
            return $this->error('非法访问');
        }

        // 开始处理
        return Service::LevelDataSave($params);
    }

    /**
     * 等级状态更新
     * @author   Devil
     * @blog     http://gong.gg/
     * @version  0.0.1
     * @datetime 2017-01-12T22:23:06+0800
     * @param    [array]          $params [输入参数]
     */
    public function statusupdate($params = [])
    {
        // 是否ajax请求
        if(!IS_AJAX)
        {
            return $this->error('非法访问');
        }

        // 开始处理
        $params['data_field'] = 'level_list';
        return Service::DataStatusUpdate($params);
    }

    /**
     * 等级删除
     * @author   Devil
     * @blog     http://gong.gg/
     * @version  0.0.1
     * @datetime 2016-12-15T11:03:30+0800
     * @param    [array]          $params [输入参数]
     */
    public function delete($params = [])
    {
        // 是否ajax请求
        if(!IS_AJAX)
        {
            return $this->error('非法访问');
        }

        // 开始处理
        $params['data_field'] = 'level_list';
        return Service::DataDelete($params);
    }
}
?>
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
class Index extends Controller
{
    // 前端页面入口
    public function indexbak($params = [])
    {
       // echo APPLICATION_VERSION;
		//exit;
        // 数组组装
        $this->assign('data', ['hello', 'world!']);
        $this->assign('msg', 'hello world! index');
        return $this->fetch('../../../plugins/view/taobao_import_1jian/index/index/index');
    }


  
      
}
?>
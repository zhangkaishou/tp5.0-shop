<?php
// +----------------------------------------------------------------------
// | ShopXO 国内领先企业级B2C免费开源电商系统
// +----------------------------------------------------------------------
// | Copyright (c) 2011~2019 http://shopxo.net All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Devil
// +----------------------------------------------------------------------

// 应用行为扩展定义文件
return array (
  'app_init' => 
  array (
  ),
  'app_begin' => 
  array (
  ),
  'module_init' => 
  array (
  ),
  'action_begin' => 
  array (
  ),
  'view_filter' => 
  array (
  ),
  'app_end' => 
  array (
  ),
  'log_write' => 
  array (
  ),
  'plugins_service_order_handle_end' => 
  array (
    0 => 'app\\plugins\\taobao_import_1jian\\Hook',
  ),
  'plugins_view_admin_order_list_operation' => 
  array (
    0 => 'app\\plugins\\taobao_import_1jian\\Hook',
    1 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_css' => 
  array (
    0 => 'app\\plugins\\commononlineservice\\Hook',
  ),
  'plugins_js' => 
  array (
    0 => 'app\\plugins\\commononlineservice\\Hook',
  ),
  'plugins_view_common_bottom' => 
  array (
    0 => 'app\\plugins\\commononlineservice\\Hook',
    1 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_admin_view_common_bottom' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_common_page_bottom' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_admin_common_page_bottom' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_common_header' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_admin_common_header' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_view_admin_order_list_operate' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_view_index_order_list_operate' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_view_index_order_list_operation' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_view_index_order_detail_operate' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
  'plugins_view_index_order_detail_operation' => 
  array (
    0 => 'app\\plugins\\expressforkdn\\Hook',
  ),
);
?>
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
namespace payment;

use think\facade\Log;

/**
 * 新生支付
 */
class XinshengPay
{
    // 插件配置参数
    private $config;

    /**
     * 构造方法
     * @desc    description
     * @param   [array]           $params [输入参数（支付配置参数）]
     */
    public function __construct($params = [])
    {
        $this->config = $params;
    }

    /**
     * 配置信息
     * @desc    description
     */
    public function Config()
    {
        // 基础信息
        $base = [
            'name'          => '新生支付',  // 插件名称
            'version'       => '0.0.1',  // 插件版本
            'apply_version' => '不限',  // 适用系统版本描述
            'apply_terminal'=> ['pc','h5'], // 适用终端 默认全部 ['pc', 'h5', 'app', 'alipay', 'weixin', 'baidu']
            'desc'          => '1.0版本，适用PC+H5',  // 插件描述（支持html）
            'author'        => 'null',  // 开发者
            'author_url'    => '',  // 开发者主页
        ];

        // 配置信息
        $element = [
//            [
//                'element'       => 'input',
//                'type'          => 'text',
//                'default'       => '',
//                'name'          => 'merId',
//                'placeholder'   => '商户ID',
//                'title'         => '商户ID',
//                'is_required'   => 0,
//                'message'       => 'merId',
//            ],
//            [
//                'element'       => 'input',
//                'type'          => 'text',
//                'default'       => '',
//                'name'          => 'pubkey',
//                'placeholder'   => '平台公钥',
//                'title'         => '平台公钥',
//                'is_required'   => 0,
//                'message'       => '平台公钥',
//            ],
//            [
//                'element'       => 'input',
//                'type'          => 'text',
//                'default'       => '',
//                'name'          => 'prikey',
//                'placeholder'   => '商户私钥',
//                'title'         => '商户私钥',
//                'is_required'   => 0,
//                'message'       => '商户私钥',
//            ],
        ];

        return [
            'base'      => $base,
            'element'   => $element,
        ];
    }

    /**
     * 支付入口
     * @param   [array]           $params [输入参数]
     */
    public function Pay($params = [])
    {
//        Log::write('支付参数：' . json_encode($params),'info');
        $url = '/xsPay/xsPay.php?' . 'order_sn=' . $params['order_no'] . '&order_amount='.$params['total_price'];
        return DataReturn('处理成功', 0, $url);
    }

    /** 支付回调处理
     * @param array $params
     * @return array
     */
    public function Respond($params = [])
    {
        return DataReturn('支付成功', 0);
    }
}
?>
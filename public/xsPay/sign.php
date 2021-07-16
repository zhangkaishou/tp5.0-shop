<?php

/**
 * 发送post请求
 * @param string $url 请求地址
 * @param array $post_data post键值对数据
 * @return string
 */
function send_post($url, $post_data) {
    $postdata = http_build_query($post_data);
    $options = array(
        'http' => array(
            'method' => 'POST',
            'header' => 'Content-type:application/x-www-form-urlencoded',
            'content' => $postdata,
            'timeout' => 15 * 60 // 超时时间（单位:s）
        )
    );
    $context = stream_context_create($options);
    $result = file_get_contents($url, false, $context);
    return $result;
}

// 获取客户端IP
function getUserIpAddr(){
    if(!empty($_SERVER['HTTP_CLIENT_IP'])){
        //ip from share internet
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    }elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
        //ip pass from proxy
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    }else{
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    return $ip;
}

function getStringData($param)
{
    $fieldString = "";
    foreach ($param as $field=>$value) {
        $fieldString .= $field . "=[" . $value . "]";
    }
    return $fieldString;
}


// RSA签名
function rsaSign($data, $private_key_path) {
    $priKey = file_get_contents($private_key_path);
    $res = openssl_get_privatekey($priKey);
    $signature = "";
    openssl_sign($data, $signature, $res, OPENSSL_ALGO_SHA1);
    openssl_free_key($res);
    return base64_encode($signature);
}


/**
 * 公钥加密
 * @param $data
 * @return string
 * @throws \Exception
 */
function encrypt($data, $pubKeyPath)
{
    $pubKey = file_get_contents($pubKeyPath);
    $encrypted = "";
    if (!$pubKey) {
        throw new \Exception("Failed to read public key file！");
    }
    if (!openssl_pkey_get_public($pubKey)) {
        throw new \Exception("Public key is not available");
    }
    foreach (str_split($data, 117) as $chunk) {
        openssl_public_encrypt($chunk, $encryptData, $pubKey);
        $encrypted .= $encryptData;
    }
    if (!$encrypted)
        throw new \Exception('Unable to encrypt data.');
    return base64_encode($encrypted);
}

$param['version'] = "2.0";
$param['tranCode'] = "EXP10";
$param['merId'] = '11000004921';
$param['merOrderId'] = $_REQUEST["orderNo"];
$param['submitTime'] = date('YmdHis');
$encryptParams = [
    'cardNo' =>  $_REQUEST["bankCardNo"],
    'holderName' => $_REQUEST["realname"],
    'cardAvailableDate' => $_REQUEST["expireDate"],
    'cvv2' => $_REQUEST["cvn2"],
    'mobileNo' => $_REQUEST["bankCardMobile"],
    'identityType' => '01',
    'identityCode' => $_REQUEST["idCard"],
    'merUserId' => $_REQUEST["orderNo"],
    'merUserIp' => getUserIpAddr(),
];
$param['msgCiphertext'] = encrypt(json_encode($encryptParams), './key/hnapay_public_key.pem');
$signMsgStr = getStringData($param);
$param['signValue'] = rsaSign($signMsgStr,'./key/rsa_private_key.pem');
$param['signType'] = "1";//RSA
$param['merAttach'] = "";
$param['charset'] = "1";//UTF8
$url = 'https://gateway.hnapay.com/exp/signSms2Step.do';
$result = send_post($url, $param);
$res['resposn'] = $result;
$res['param'] = $param;
$res['encryptParams'] = $encryptParams;

echo json_encode($res);
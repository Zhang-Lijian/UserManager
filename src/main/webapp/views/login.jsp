<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>登录</title>
	<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
	<link href="css/lgstyle.css" rel='stylesheet' type='text/css' />	
	<style type="text/css">
		.buttons{
			text-align: center;
			margin: 50px auto;
			width: 300px;
			height: 100px;
		}
		.buttons .selected{
			margin-right:20px;
			font-size: 16px;
			font-weight:bold;
			color: red;
		}
		.buttons .unselected{
			margin-right:20px;
			font-size: 16px;
			font-weight:bold;
			color: black;
		}
	
	</style>
</head>
<body>
<!--SIGN UP-->
	<!-- <h1>分公司</h1>
	<h1>中支</h1> -->
	<div class="buttons">
		<a href="#0" id="fgs-button" class="selected">&nbsp;分公司登陆</a>
		<a href="#1" id="zz-button" class="unselected">&nbsp;中支登录</a>
	</div>
	<div class="login-form" id="fgs-form">
		<div class="avtar">
			<img src="images/avtar.png" />
		</div>
		<form action="login" method="POST">
			<input type="hidden"  name="institution" value="分公司" > 
			<div class="select">
				<select name="department">
					<option value="">---请选择部门---</option>
					<option items="${department }">
					<option  value="营销部">营销部</option>
					<option  value="组织发展部">组织发展部</option>
					<option  value="续期收展部">续期收展部</option>
					<option  value="培训部">培训部</option>
					<option  value="银保业务部">银保业务部</option>
					<option  value="银保续期部">银保续期部</option>
					<option  value="银保培训部">银保培训部</option>
					<option  value="银保业务支持部">银保业务支持部</option>
					<option  value="F1部">F1部</option>
					<option  value="计划财务部">计划财务部</option>
					<option  value="客户服务部">客户服务部</option>
					<option  value="人力资源部">人力资源部</option>
					<option  value="业务管理部">业务管理部</option>
					<option  value="办公室">办公室</option>
					<option  value="法律合规与风险管理部">法律合规与风险管理部</option>
					<option  value="信息技术部">信息技术部</option>
					<option  value="管理员">管理员</option>
				</select>
			</div>
			<div class="key">
				<input type="password" name="psd" placeholder="请输入密码">
			</div>
			<div class="signin">
				<input type="submit" value="登录">
			</div>
		</form>
	</div>
	<div class="login-form" id="zz-form">
		<div class="avtar">
			<img src="images/avtar.png" />
		</div>
		<form action="login" method="POST" >
			
			<div class="select">
				<select name="institution">
					<option value="">---请选择中支---</option>
					<option  value="杭州本部">杭州本部</option>
					<option  value="绍兴中支">绍兴中支</option>
					<option  value="台州中支">台州中支</option>
					<option  value="金华中支">金华中支</option>
					<option  value="温州中支">温州中支</option>
					<option  value="湖州中支">湖州中支</option>
					<option  value="嘉兴中支">嘉兴中支</option>
					<option  value="丽水中支">丽水中支</option>
					<option  value="舟山中支">舟山中支</option>
					<option  value="衢州中支">衢州中支</option>
				</select>
			</div>
			<div class="key">
				<input type="password" name="psd" placeholder="请输入密码">
			</div>
			<div class="signin">
				<input type="submit" value="登录">
			</div>
		</form>
	</div>
<script type="text/javascript">	
	$(function(){
		var fgsButton = $("#fgs-button");
		var zzButton = $("#zz-button");
		var fgsForm = $("#fgs-form");
		var zzForm = $("#zz-form"); 		
		zzForm.hide();

		zzButton.click(function(){
			zzButton.addClass("selected");
			zzButton.removeClass("unselected");
			fgsButton.addClass("unselected");
			fgsButton.removeClass("selected");
			fgsForm.hide();
			zzForm.show();
		});
		fgsButton.click(function(){
			fgsButton.addClass("selected");
			fgsButton.removeClass("unselected");
			zzButton.addClass("unselected");
			zzButton.removeClass("selected");
			zzForm.hide();
			fgsForm.show();
		});
	
		});
</script>
<script type="text/javascript">
/* 
top.location:地址栏访问地址
self.location:访问当前页面的地址
*/
if (top.location != self.location){       
top.location = self.location;       
}
</script>
</body>
</html>
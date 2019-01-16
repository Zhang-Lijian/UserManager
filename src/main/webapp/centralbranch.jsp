<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>登录</title>
	<link href="css/lgstyle.css" rel='stylesheet' type='text/css' />	
</head>
<body>
<!--SIGN UP-->
	<h1>中支</h1>
	<div class="login-form">
		<div class="avtar">
			<img src="images/avtar.png" />
		</div>
		<form action="login" method="POST">
			
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
</body>
<script type="text/javascript">
	/* 
		top.location:地址栏访问地址
		self.location:访问当前页面的地址
	*/
	if (top.location != self.location){       
		top.location = self.location;       
	}
</script>
</html>
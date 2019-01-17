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
	<h1>分公司</h1>
	<div class="login-form">
		<div class="avtar">
			<img src="images/avtar.png" />
		</div>
		<form action="login" method="POST">
			<input type="hidden"  name="institution" value="分公司" > 
			<div class="select">
				<select name="department">
					<option value="">---请选择部门---</option>
					<option  value="信息技术部">信息技术部</option>
					<option  value="财务部">财务部</option>
					<option  value="办公室">办公室</option>
					<option  value="客户服务部">客户服务部</option>
					<option  value="银保业务部">银保业务部</option>
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
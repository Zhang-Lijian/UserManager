<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login" method="post">
	<font color="red">${requestScope.error}</font>
	部门
<select name="department">
  <option value="信息技术部">信息技术部</option>
  <option value="finace">财务部</option>
  <option value="办公室">办公室</option>
  <option value="管理员">管理员</option>
</select>
<br>
密码<input type="password" name="psd">
<input type="submit" value="提交">
	</form>
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
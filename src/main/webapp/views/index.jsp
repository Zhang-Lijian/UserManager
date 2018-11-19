<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="selectUser" method="post">
	<input type="hidden" name="department" value="${admin.department }"><br>
	<input type="submit" value="查询">
</form>
	<br>
<form action="addUser" method="post">
	部门<input type="text" name="department" value="${admin.department }"><br>
	系统<input type="text" name="systemname"><br>
	用户名<input type="text" name="username"><br>
	<input type="submit" value="保存">
</form>
</body>
</html>
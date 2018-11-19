<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${department }
<a href="controller/selectUser/1"> 查询学生</a><br>
<form action="controller/addUser" method="post">
	部门<input type="text" name="department" value=""><br>
	系统<input type="text" name="systemname"><br>
	用户名<input type="text" name="username"><br>
	<input type="submit" value="保存">
</form>

</body>
</html>
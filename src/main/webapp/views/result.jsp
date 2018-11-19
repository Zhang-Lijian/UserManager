<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
ul{
list-style:none;

}
li{
display: inline;
}
img{

}
</style>
</head>
<body>
	<ul class="ul">
        <li>序号</li>
        <li>部门</li>
        <li>系统名称</li>
        <li>用户名</li>
        <li>删除</li>
    </ul>
	<c:forEach items="${list }" var="Users" varStatus="status" >
	<ul>
        <li>${status.index+1 }</li>
        <li>${Users.department }</li>
        <li>${Users.systemname }</li>
        <li>${Users.username }</li>
        <li><a href="deleteUser?id=${Users.id }"><img alt="删除" src="pic/delete.jpg"></a></li>
    </ul>
	
	</c:forEach>
</body>
</html>
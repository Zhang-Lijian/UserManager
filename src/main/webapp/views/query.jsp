<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	form{
	width: 400px;
/* 	height:320px;
	border:orange 1px solid; */
	margin: 50px auto;
	}
	.title{
	margin-top:20px;
	text-align: center;
	height: 80px;
	}
	form div {
	text-align: center;
	}
</style>
</head>
<body>
	<div class="title"><b>查询</b></div>
	<form action="${path }/queryByoa" method="post">
		<span>OA用戶名</span><input type="text" name="oa">
		<input type="hidden" value="${admin.department }" name="dpt">
		<input type="submit" value="查询">
	</form>
	<form action="${path }/queryBydpt" method="post">
		<div><input type="hidden" value="${admin.department }" name="department"></div>
		<div><input type="submit" value="查询全部"></div>
	</form>
</body>
</html>
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
	margin-left: 100px;

	}
	.title{
	margin-top:20px;
	height: 80px;
	
	}
	.title b{
	text-align: center;
	}
	#form2{
	margin-top: 50px;
	}
</style>
</head>
<body>
	
	<form action="${path }/queryByoa2" method="post">
		<div class="title"><b>查询</b></div>		
		<span>OA用戶名</span><input type="text" name="oa">
		<input type="hidden" value="${admin.institution }" name="institution">
		<input type="submit" value="查询">
	</form>
	
	<form action="${path }/queryByins" method="post" id="form2">
		<div><input type="hidden" value="${admin.institution }" name="institution"></div>
		<div><input type="submit" value="查询全部"></div>
	</form>
</body>
</html>
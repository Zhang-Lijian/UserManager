<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <% String path =request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${path }/css/common.css">
    <link rel="stylesheet" href="${path }/css/left.css">
</head>

<body style="background:#283643;">

	<ul>
		<li id=username>&nbsp;&nbsp;&nbsp;&nbsp;用户: ${admin.institution}${admin.department }</li>
	    <c:if test="${admin.department!=null }">
	    	<li><a href="query.jsp" target="mainFrame"><i></i>账户查询</a></li>
	    </c:if>
	    <c:if test="${admin.department==null }">
	    	<li><a href="query2.jsp" target="mainFrame"><i></i>账户查询</a></li>
	    </c:if>
	    <li><a href="edit.jsp" target="mainFrame"><i></i>新增账户</a></li>
	    <li><a href="${path }/logout" ><i></i>退出登录</a></li>
	    <li><a href="changepsd.jsp" target="mainFrame"><i></i>更改密码</a></li>
	</ul>

</body>
</html>
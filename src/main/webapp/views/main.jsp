<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Title</title>
	<link rel="stylesheet" href="${path }/css/style.css" type="text/css" />
	<link rel="stylesheet" href="${path }/css/amazeui.min.css" />
	<link rel="stylesheet" href="${path }/css/pageStyle.css">
	<script src="${path }/js/jquery-1.12.4.js"></script>
	<style type="text/css">
	li{
	font-size: 13px;
	}
	</style>
</head>
<body style="background: #f3f3f3;">

	<div class="goods_list">
		<ul class="title_ul">
			<li>序号</li>
			<li>OA用户</li>
			<li>部门</li>
			<li>系统名称</li>
			<li>系统账号</li>
			<li>申请时间</li>
			<li>事务申请号（申请）</li>
			<li>注销时间</li>
			<li>事务申请号（注销）</li>
			<li>账号状态</li>
			<li>变更状态</li>
		</ul>
		<c:forEach items="${list }" var="Users" varStatus="status">
			<ul class="list_goods_ul">
				<li>${status.index+1 }</li>
				<li>${Users.oa }</li>
				<li>${Users.department }</li>
				<li>${Users.systemname }</li>
				<li>${Users.username }</li>
				<li>${Users.applytime }</li>
				<li>${Users.applyid }</li>
				<li>${Users.endtime }</li>
				<li>${Users.endid }</li>
				<li>${Users.status }</li>
				<!-- 修改账户状态为注销 -->
				<%-- <li><a href="${path }/changeStatus?id=${Users.id }" onclick="if(confirm('确认修改吗？')==false) return false;"><img
						class="img_icon" src="${path }/images/close.png"
						alt=""></a></li> --%>
				<li><a href="${path }/updateUI?id=${Users.id }" onclick="if(confirm('确认修改吗？')==false) return false;"><img
						class="img_icon" src="${path }/images/close.png"
						alt=""></a></li>
			</ul>
		</c:forEach>		
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${path }/js/jquery-1.12.4.js"></script>
</head>
<body>
	<form action="${path }/changepsd" method="post" id="form">
		<div class="title"><b>更改密码</b></div>
		<div><span>当前密码</span><input type="password" name="currentpsd"></div>
		<div><span>新密码</span><input type="password" name="newpsd" id="newpsd"></div>
		<div><span>确认新密码</span><input type="password" name="verifynewpsd" id="verifynewpsd"></div>
		<div><input type="hidden" value="${admin.department }" name="dpt"></div>
		<div><input type="button" value="提交" onclick="checkpsd()"></div>
	</form>
	<div>${error}</div>
</body>
<script type="text/javascript">
	function checkpsd(){
		if(newpsd.value==verifynewpsd.value){
			form.submit();
		}else{
			alert("两次密码不一致！！");
			return;
		}
	}
</script>
</html>
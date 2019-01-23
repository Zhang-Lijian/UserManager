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
	<script src="${path }/js/jquery-1.12.4.js"></script>
</head>
<body>

	<div class="main_top">
		<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">更新账户</strong>
			</div>
		</div>
		<hr>
		<div class="edit_content">
			<form action="${path }/update"
				style="background: none; width: 700px;" id="add_form" method="post">
					<div class="item1">
						<span></span> <input type="hidden" class="am-form-field"
							name="id" value="${users.id }">
					</div>				
					<div class="item1">
						<span>部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：</span> <input type="text" class="am-form-field"
							name="department" value="${users.department }" readonly="readonly">
					</div>
					<div class="item1">
						<span>OA用户名：</span> <input type="text" class="am-form-field"
							name="oa" value="${users.oa}" readonly="readonly">
					</div>
					<div class="item1">
						<span>系统名称：</span> <input type="text" class="am-form-field"
							name="systemname" value="${users.systemname }" readonly="readonly">
					</div>					
					<div class="item1">
						<span>系统账户&nbsp;&nbsp;&nbsp;：</span> 
						<input type="text" class="am-form-field" value="${users.username }"
							name="username" readonly="readonly">
					</div>
					<!-- <div class="item1">
						<span></span>  --><input type="hidden" class="am-form-field"
							name="applyid" value="${users.applyid }">
					<!-- </div> -->
					<div class="item1">
						<span>事务申请号（注销）：</span> <input type="text" class="am-form-field"
							name="endid">
					</div>
				<button class="am-btn am-btn-default" type="button" id="add" onclick="check(add_form)">更新</button>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="am-btn am-btn-default" type="reset" id="reset">重置</button>				
			</form>
		</div>
	</div>
</body>
<script>
	function check(add_form){
		if(add_form.endid.value==""||add_form.applyid.value.length!=12||add_form.applyid.value.indexOf("T")!=0){
			alert("请输入正确的事务申请号");add_form.username.focus();return;
		}
	
		add_form.submit();
	}
</script>
</html>
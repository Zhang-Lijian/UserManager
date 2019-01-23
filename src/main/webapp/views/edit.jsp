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
				<strong class="am-text-primary am-text-lg">新增账户</strong>
			</div>
		</div>
		<hr>
		<div class="edit_content">
			<form action="${path }/addUser"
				style="background: none; width: 700px;" id="add_form" method="post">				
					<div class="item1">
						<span>机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;构：</span> <input type="text" class="am-form-field"
							name="institution" value="${admin.institution }" readonly="readonly">
					</div>
					<div class="item1">
						<span>部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：</span>
					<select name="department">					
						<option value="">---请选择部门---</option>
						<option  value="营销部" <c:if test="${admin.department=='营销部'}">selected="selected"</c:if>>营销部</option>
						<option  value="组织发展部" <c:if test="${admin.department=='组织发展部'}">selected="selected"</c:if>>组织发展部</option>
						<option  value="续期收展部" <c:if test="${admin.department=='续期收展部'}">selected="selected"</c:if>>续期收展部</option>
						<option  value="培训部" <c:if test="${admin.department=='培训部'}">selected="selected"</c:if>>培训部</option>
						<option  value="银保业务部" <c:if test="${admin.department=='银保业务部'}">selected="selected"</c:if>>银保业务部</option>
						<option  value="银保续期部" <c:if test="${admin.department=='银保续期部'}">selected="selected"</c:if>>银保续期部</option>
						<option  value="银保培训部" <c:if test="${admin.department=='银保培训部'}">selected="selected"</c:if>>银保培训部</option>
						<option  value="银保业务支持部" <c:if test="${admin.department=='银保业务支持部'}">selected="selected"</c:if>>银保业务支持部</option>
						<option  value="F1部" <c:if test="${admin.department=='F1部'}">selected="selected"</c:if>>F1部</option>
						<option  value="计划财务部" <c:if test="${admin.department=='计划财务部'}">selected="selected"</c:if>>计划财务部</option>
						<option  value="客户服务部" <c:if test="${admin.department=='客户服务部'}">selected="selected"</c:if>>客户服务部</option>
						<option  value="人力资源部" <c:if test="${admin.department=='人力资源部'}">selected="selected"</c:if>>人力资源部</option>
						<option  value="业务管理部" <c:if test="${admin.department=='业务管理部'}">selected="selected"</c:if>>业务管理部</option>
						<option  value="办公室" <c:if test="${admin.department=='办公室'}">selected="selected"</c:if>>办公室</option>
						<option  value="法律合规与风险管理部" <c:if test="${admin.department=='法律合规与风险管理部'}">selected="selected"</c:if>>法律合规与风险管理部</option>
						<option  value="信息技术部" 
							<c:if test="${admin.department=='信息技术部'}">selected="selected"</c:if>	
							>信息技术部</option>
					</select>
					</div>	
					<div class="item1">
						<span>OA用户名：</span> <input type="text" class="am-form-field"
							name="oa" >
					</div>
					<div class="item1">
						<span>系统名称：</span>
					<select name="systemname">
						<option value="">---请选择系统---</option>
						<option  value="BIP">BIP</option>
						<option  value="CSC">CSC</option>
						<option  value="EBA">EBA</option>
						<option  value="ELU">ELU</option>
						<option  value="FE">FE</option>
						<option  value="UCM">UCM</option>
						<option  value="BPM">BPM</option>
						<option  value="BAS">BAS</option>						
					</select>
					</div>					
					<div class="item1">
						<span>系统账户&nbsp;&nbsp;&nbsp;：</span> <input type="text" class="am-form-field"
							name="username">
					</div>
					<div class="item1">
						<span>事务申请号（申请）：</span> <input type="text" class="am-form-field"
							name="applyid">
					</div>
				<button class="am-btn am-btn-default" type="button" id="add" onclick="check(add_form)">添加</button>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="am-btn am-btn-default" type="button" id="reset">重置</button>				
			</form>
		</div>
	</div>
</body>
<script>
	function check(add_form){
		if(add_form.systemname.value==""){
			alert("请选择系统名称");add_form.systemname.focus();return;
		}else if(add_form.username.value==""){
			alert("请输入系统账户");add_form.username.focus();return;
		}else if(add_form.oa.value==""){
			alert("请输入OA用户名");add_form.username.focus();return;
		}else if(add_form.applyid.value==""||add_form.applyid.value.length!=12||add_form.applyid.value.indexOf("T")!=0){
			alert("请输入正确的事务申请号");add_form.username.focus();return;
		}
		add_form.submit();
	}
	$("#reset").click(function() {
		$(window).attr('location', 'edit.jsp');
	}); 
</script>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:directive.include file="/WEB-INF/content/base/tag.inc" />
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE>修改枚举明细信息</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<META http-equiv=Expires content=0>
		<script type="text/javascript" src="<%=path%>/js/jquery-1.6.js">
		</script>
		<script type="text/javascript" src="<%=path%>/js/base.js">
		</script>
		<script type="text/javascript" src="<%=path%>/js/formValidate.js">
		</script>
		<link href="<%=path%>/css/Style1.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/css/Style2.css" rel="stylesheet" type="text/css" />
		<SCRIPT language=JavaScript>
		<!--
		//按钮提交事件
		function submitForm(url, act)
		{
			if(act == "update")
			{
				var fieldValue = document.getElementById("fieldValue");
				var displayValue = document.getElementById("displayValue");
				var displayOrder = document.getElementById("displayOrder");
				
				if(!checkFormdata(fieldValue,"字段值",50,true,false,false,false,false))
				{	
					return false;
				}
				if(!checkFormdata(displayValue,"显示值",50,true,false,false,false,false))
				{	
					return false;
				}
				if(displayOrder.value=="" || displayOrder.value.trim()=="" || isNaN(displayOrder.value) || displayOrder.value.indexOf('.')>0)
				{
					alert("请输入整数序号！");
					displayOrder.select();
					return false;
				}
				document.PageForm.action = url;
				document.PageForm.submit();
			}
		}
		-->
		</SCRIPT>
	</HEAD>
	<body>
	<div id=mainzone>
		<div id="body">
			<!-- 提交表单 -->
			<FORM id=PageForm name=PageForm  method=post>
				<!-- 系统功能路径 -->
				<div class="loc">
					<div class="groupmenu" id="groupmenu"></div>
					<!--  
					<a href="<%=path %>/login/mainFrame.do"></a> &raquo;
					-->
					<span>系统管理</span> &raquo;
					<span>系统参数管理</span> &raquo;
					<a href="<%=path %>/acegi/queryAllEnum.do">枚举信息维护</a> &raquo;
					<span class="last">修改枚举明细</span>
				</div>

				<!-- 主体DIV -->
				<div class="tab_cntr">
					<!-- 内容填写表格 -->
					<table class="editorTb" style="" id="tbBase" name="editorTab">
						<tr>
							<td class="hd" colspan="2">
								修改枚举明细对象（<font color="red">* 为必填项</font>）
							</td>
						</tr>
						<tr>
							<td class="titl">
								<b>字段值:</b>
							</td>
							<td>
								<input name="sysEnumItem.id"  type="hidden" value="${sysEnumItem.id }" />								
								<input name="sysEnumItem.sysEnum.enumId"  type="hidden" value="${enumId }" />	
								${sysEnumItem.fieldValue }							
								<input id="fieldValue" name="sysEnumItem.fieldValue" value="${sysEnumItem.fieldValue }" type="hidden" class="txt" style="width: 150px;" />
							</td>
						</tr>
						<tr>
							<td class="titl">
								<b>显示值:</b>
							</td>
							<td>
								<input id="displayValue" name="sysEnumItem.displayValue" value="${sysEnumItem.displayValue }" type="text" class="txt" style="width: 150px;" />
								<font color="red">&nbsp;*</font>
							</td>
						</tr>
						<tr>
							<td class="titl">
								<b>显示顺序:</b>
							</td>
							<td>
								<input id="displayOrder" name="sysEnumItem.displayOrder" value="${sysEnumItem.displayOrder}" type="text" maxlength="3" class="txt" style="width: 150px;" />
								<font color="red">&nbsp;*</font>
							</td>
						</tr>
						<tr>
							<td class="titl">
								<b>状态:</b>
							</td>
							<td>
								<s:if test="sysEnumItem.status==1">
									<INPUT type=radio name="sysEnumItem.status" value=1 checked>
											可用&nbsp;&nbsp;
											<INPUT type=radio name="sysEnumItem.status" value=0>
											不可用</s:if>
								<s:if test="sysEnumItem.status==0">
									<INPUT type=radio name="sysEnumItem.status" value=1>
											可用&nbsp;&nbsp;
											<INPUT type=radio name="sysEnumItem.status" value=0 checked>
											不可用</s:if>
							</td>
						</tr>
					</table>

					<!-- 提交按钮 -->
					<div style="padding: 10px; padding-left: 10px;">
						<div style="width: 250px; float: left;">
							<input name="button" type=button onclick="javascript:history.go(-1)"
								value="" class="return" />
						</div>
						<input type="button" name="btnSave" value=""
							onclick="submitForm('acegi/updateEnumItem.do','update')"
							id="btnSave" class="save" />
						<input name="Submit" type="reset" value="" class="reset" />
						<div class="clr"></div>
					</div>
				</div>
			</FORM>
			</div>
		</div>
	</BODY>
</HTML>
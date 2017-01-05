<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/content/base/tag.inc" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>支付流水添加</title>
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/css/style_zjjg.css" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/public.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
		<script type="text/javascript" src="<%=path%>/js/base.js"></script>
		<link href="<%=path%>/js/select2-3.5.2/select2.css" rel="stylesheet"/>
<script language=JavaScript>
function accountApplyinfo(buildingId){
//     var regulateAccount=$.trim($("#regulateAccount").val());
//     var regulateAccName=$.trim($("#regulateAccName").val());
//     if(regulateAccount==""){
//       $("#errorMessage").html("监管账号不能为空！");
//       return;
//     }
//      if(regulateAccName==""){
//       $("#errorMessage").html("监管账号名称不能为空！");
//       return;
//     }
	//$("#accountOpenAppllysave").submit();
}
</script>
<script language="JavaScript">document.oncontextmenu = function() { return false;}</script>
	</head>
	<body >
		<div class="w900">
			<div class="header">
				支付流水
			</div>
			<div class="center" style="margin-top: -32px;">
			<form action="accountOpen/accountOpenAppllysave.do" method="post" id="accountOpenAppllysave">
				<div class="content">
				<p  class="aply_title"  style="margin-left: 60px;padding-left: 112px;width: 460px;">支付流水信息</p>
					<div class="item">
						<span class="item-label"><label>
								客户编号：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.buildingId" type="text" id="buildingId" value="${buildingInfo.buildingId }"/>
						<span class="item-label"><label>
								客户名称：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.coveredArea" type="text" id="coveredArea" value="${buildingInfo.coveredArea }"/>
					</div>
					<div class="item">
						<span class="item-label"><label>
								系统账户：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.companyName" type="text" id="companyName" value="${buildingInfo.companyName }" />
						<span class="item-label"><label>
								客户账户：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.projetName" type="text" id="projetName" value="${buildingInfo.projetName }" />
					</div>
					<div class="item">
						<span class="item-label"><label>
								借贷类型：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.projectAdd" type="text" id="projectAdd" value="${buildingInfo.projectAdd }" />
					    <span class="item-label"><label>
								交易日期：
							</label> </span>
						<input class="input203 fleft"  name="projectReguNo" type="text" id="projectReguNo" value="${projectReguNo }" />
					</div>
					<div class="item">
						<span class="item-label"><label>
								交易金额：
							</label> </span>
						<input class="input203 fleft"  name="projetReguName" type="text" id="projetReguName" value="${projetReguName }" />
					   <span class="item-label"><label>
								交易流水号：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.regulateAccount" type="text" id="regulateAccount" value="${buildingInfo.regulateAccount }" />
					</div>
					<div class="item">
						<span class="item-label"><label>
								交易对手账户：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.regulateAccName" type="text" id="regulateAccName" value="${buildingInfo.regulateAccName }" />
					    <span class="item-label"><label>
								交易对手账户名称：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.regulateAccName" type="text" id="regulateAccName" value="${buildingInfo.regulateAccName }" />
					</div>
					<div class="item">
						<span class="item-label"><label>
								交易对手账户机构名称：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.regulateAccName" type="text" id="regulateAccName" value="${buildingInfo.regulateAccName }" />
					   <span class="item-label"><label>
								附言：
							</label> </span>
						<input class="input203 fleft"  name="buildingInfo.regulateAccName" type="text" id="regulateAccName" value="${buildingInfo.regulateAccName }" />
					</div>
				</div>
				</form>
				<span class="tips-info pl100" id="errorMessage"></span>
				<div class="btn-div">
					<input class="item-btn" name="" type="button" value="保存" onclick="javascript:accountApplyinfo();"  />
				</div>
			</div>
		</div>
	</body>
</html>

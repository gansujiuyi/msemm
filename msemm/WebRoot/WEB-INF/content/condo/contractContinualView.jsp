<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:directive.include file="/WEB-INF/content/base/tag.inc" />
<%String path = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>资金流水页面</title>
		<meta http-equiv=Content-Type content="text/html; charset=utf-8" />
		<meta http-equiv=Expires content=0 />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.6.js"></script>
		<script type="text/javascript" src="<%=path%>/js/base.js"></script>
		<link href="<%=path%>/css/Style1.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/css/Style2.css" rel="stylesheet" type="text/css" />
		<script language=JavaScript>
	//按钮提交事件 
	function submitForm(url, act)
	{
	    //重新查询
	   if(act == "search")
	    {
	        document.PageForm.action = url;
	        document.PageForm.submit();
	    }else{
	        window.location.href=url;
	    }
	}
	function Auditing(id_){
		$.ajax({
			type : "POST",
			url : "<%=path%>/contractContinual/AuditingAccFlows.do",
			data : {
				"accountFlows.id":id_
			},
			success : function(data) {
				 if(data.messgae=='true'){
					 alert("审核成功");
					 window.location.href="<%=path%>/contractContinual/contractContinualView.do";
				 }
			}
		});
	}
</script>
	</head>
	<body>
	<div id=mainzone>
		<div id="body">
			<form id="PageForm" name="PageForm" method="post" action="<%=path%>/contractContinual/contractContinualView.do">
				<div id="itemList">
					<div class="loc">
						<div class="groupmenu" id="groupmenu"></div>
						<span>流水补录审批</span> &raquo;
					</div>
					<!-- 全/反选 -->
						<div class="chooseCase">
							<!-- 搜索查询 -->
							<div style="float: left" class="search">
							<table width="100%" border="0">
								<tr>
								 <input  type="hidden" name="buildingId" value="${buildingId}"/>
									<td width="5%" >流水号：<input id="accountFlows" name="accountFlows.transactionSeqNum" value="${accountFlows.transactionSeqNum}" type="text" class="txt" /></td>
									<td width="10%" >
										<a href="javascript:submitForm('<%=path%>/contractContinual/contractContinualView.do','search')"><img src="<%=request.getContextPath() %>/images/search-btn.jpg" style="vertical-align:middle; padding-left:10px;"/></a>
									</td>
								</tr>
							</table>
							</div>
						</div>
						<!-- 数据列表 -->
						<div id="PrintContent" class="mainCon">
							<table class="mainTab" id="itemListTab">
								<tr id="tabHeader">
									<th>
										客户ID
									</th>
									<th>
										客户名称
									</th>
									<th>
										系统账户
									</th>
									<th>
										客户账户
									</th>
									<th>
										交易金额
									</th>
									<th>
										交易流水号
									</th>
									<th>
										交易对手账户
									</th>
									<th>
										交易对手账户名称
									</th>
									<th>
										状态
									</th>
									<th>
										操作
									</th>
								</tr>
								<c:if test="${empty pageFinder.data }">
									<tr><td colspan=9 align="center" height="25"><font color="red">没有查询到相关记录</font></td></tr>
								</c:if>
								<c:forEach var="accountFlows" items="${pageFinder.data}"
									varStatus="status">
									<tr>
										<td>
											${accountFlows.custId }
										</td>
										<td>
											${accountFlows.custName }
										</td>
										<td>
											${accountFlows.sysAccount }
										</td>
										<td>
											${accountFlows.custAccount}
										</td>
										<td>
											${accountFlows.transactionAmount }
										</td>
										<td>
											${accountFlows.transactionSeqNum }
										</td>
										<td>
											${accountFlows.oppositeCustAccount }
										</td>
										<td>
											${accountFlows.oppositeCustAccountName }
										</td>
										<td>
											<c:if test="${accountFlows.status == '0'}"><span style="color:#00aaff;font: bold;">已审批</span></c:if>
											<c:if test="${accountFlows.status == '1'}"><span style="color:green;font: bold;">已使用</span></c:if>
											<c:if test="${accountFlows.status == '2'}"><span style="color:red;font: bold;">待审批</span></c:if>
										</td>
										<td>
										 <c:if test="${role.roleId=='1080' && accountFlows.status == '2'}">
										   <a href="javascript:Auditing('${accountFlows.id }')">审核</a>
										 </c:if>
										  <%-- <a href="<%=path%>/capitalManage/queryContractPayInfo.do?contactNo=${contact.contactNo }&buildingId=${contact.houseNo}"><img src="<%=path%>/images/template/b_search.png" alt="IMG" />查看支付流水信息</a> ||  <a href="<%=path%>/capitalManage/queryContactRefPayInfo.do?contactNo=${contact.contactNo }&buildingId=${contact.houseNo}"><img src="<%=path%>/images/template/b_search.png" alt="IMG" />查看退款流水信息</a> --%>
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<div class="headPageNavi">
							<!-- 分页 -->
							<div style="float: right" class="pageNavi" id="pagerBtm">
								<c:import url="../base/page.jsp?formId=PageForm"
									charEncoding="utf-8"></c:import>
							</div>
						</div>
				</div>
			</form>
		</div>
	</div>
	</body>
	<!-- 首次请求本页面仅显示查询门店的条件 -->
	<c:if test="${!empty pageFinder}">
		<script type="text/javascript"> 
		//已选中项计总数
		var sltedItemCnt = 0;
		//奇偶行变色
		altRow(1, "itemListTab", "odd", "even");
		//鼠标划过行时变色
		hoverRow(1, "itemListTab", "over");
		</script>
	</c:if>
</html>
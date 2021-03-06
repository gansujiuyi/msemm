<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:directive.include file="/WEB-INF/content/base/tag.inc" />
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>合同流水绑定</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta http-equiv=Expires content=0>
<link rel="stylesheet" type="text/css" href="../css/public.css" />
<!--首页中间部分 End-->
<script src="<%=path%>/js/jquery-1.6.js" type="text/javascript" charset="utf-8"></script>
<!--日历控件-->
<script type="text/javascript" src="<%=path%>/js/My97DatePicker/calendar.js" ></script>
<script type="text/javascript" src="<%=path%>/js/My97DatePicker/WdatePicker.js" ></script>
<style type="text/css">
	.e-wrap {border: 1px solid #b5c9c7;overflow: hidden;/* width: 1147px;*/}
	.bangd-page {padding: 0px 10px;}
	.bangd-page .bangd-item {width: 300px;}
	.connect-box {width: 498px;margin:32px 11px 0}
	.bangd-page .bangd-item h3,.connect-box .connect-title{font: bold 12px "宋体"; color: #333;}
	.bangd-num{margin: 10px 0;clear: both; overflow: hidden;}
	.bangd-num .search-num{float: left;width: 136px; height: 25px; padding: 5px 10px; border: 1px solid #eee;font: 14px "微软雅黑";color: #999; margin-right: 10px;}
	input.Wdate {width: 108px;background: url(../images/calendar.png) no-repeat 90%}
	.bangd-calendar{display: inline-block; float: left; width: 136px; height: 25px; padding: 5px 10px; border: 1px solid #eee;font: 14px "微软雅黑";color: #999;cursor: pointer; }
	.bangd-calendar i{float: right; display: inline-block; width:20px; height: 23px; background: url(../images/calendar.png) left top no-repeat; }
	.connect-box .connect-title + .tab-mc {margin-top: 24px;}
	.tab-mc {border: 1px solid #b5c9c7;}
	.bangd-header,.connect-header span{height: 33px; padding:0 10px;font: normal 14px/33px "微软雅黑";color: #333;background-image: url(../images/tit-bg.jpg);background-repeat: repeat-x;}
	.connect-box .connect-header{clear: both;overflow: hidden;}
	.connect-box .connect-header span{float:left;width: 228px; color: #000;}
	.bangd-info-wrapper{height: 390px; }
	.bangd-info-wrapper ul.bangd-list{height: 360px; overflow-y: scroll;}
	.bangd-info-wrapper ul.bangd-list li span{display: block; font: 14px/20px "微软雅黑"; color: #666;height: 20px; padding: 13px 10px;cursor: pointer;}
	.bangd-info-wrapper ul.bangd-list li span label{display: block;cursor: pointer;}
	.deal-box {padding: 2px 9px 0;}
	.deal-box input{width: 56px;height: 26px;border: none;}
	.deal-box input.add { background-image: url(../images/add.png);}
	.deal-box input.cut { background-image: url(../images/cut.png);}
	.page-deal a{display: inline-block; width: 80px;height: 26px;text-indent: -999;}
	.page-deal a.save{background-image: url(../images/save.jpg);}
	.page-deal a.back{background-image: url(../images/back.jpg);}
	.connect-box .connect-ul-box {height: 360px;overflow-y: scroll;}
	.connect-box .connect-ul-box .bangd-list{width: 237px;float: left;overflow: hidden;}
	.connect-box .bangd-info-wrapper .bangd-list li span{float: left; display: inline-block; width: 228px;}
	.bangd-list li input[type=radio]{vertical-align: middle;margin: -1px 5px 0 0;}
	.page-deal {padding: 6px 10px 25px;}
</style>
<style type="text/css">
@charset "utf-8";						 
*{ margin:0; padding:0; list-style:none; }
html,body{ height:100%; overflow:hidden;}
body{color:#454545;font-size:14px;font-family: 'microsoft yahei',Verdana,Arial,Helvetica,sans-serif,"微软雅黑";-webkit-text-size-adjust: none; }
div,form,img,ul,ol,li,dl,dt,dd {margin:0; padding:0; border:0;}
ul,li,ol,dl,dt,dd{list-style:none;}
h1,h2,h3,h4,h5,h6{ margin:0; padding:0; }
i,em,var,a{ font-style:normal; text-decoration:none;}
img{vertical-align:middle;}


.box-mask {width: 100%; height: 100%; position: fixed; top: 0; left: 0; z-index: 99; display: none; background:#000; opacity: 0.5; filter: alpha(opacity=50%);}
.pop_box {width:700px; height:580px; position: absolute; z-index: 101; display: none; background: #fff;box-shadow: -9px 9px 13px #555;border-radius: 5px; -webkit-border-radius: 5px; -moz-border-radius: 5px; -ms-border-radius: 5px; -o-border-radius: 5px;}
.Cancel {padding: 10px 20px;clear: both;overflow: hidden;}
.Cancel a{display: inline-block;float: right;width: 24px; height: 24px; }
.pop_box .pop_tetx{ padding:10px 20px;color:#666; background:#fff;  font: normal 16px "微软雅黑";}
.pop_box .pop_tetx p{margin-top: 10px;}
.pop_box .pop_tetx p i{display: inline-block;margin: 0 10px -5px 20px; }
.btn_box a{float: right; display: inline-block;width: 88px;height: 35px;line-height:35px; text-align:center;color: #fff;margin-top:100px; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius:3px; -o-border-radius: 3px;}
.btn_box .sure{background:#1eb2dd;}
.btn_box .cancle{background: #aaa; margin-left: 20px;}
</style>
<!--日历控件 End -->
<script type="text/javascript">

function isContains(str, substr) {
    return new RegExp(substr).test(str);
}
			$(function(){
		        /*输入文本框变色*/
				$(".bangd-num .search-num").focus(function(){
						$(this).css("color","#333");
				});
				$(".bangd-num .search-num").blur(function(){
					if($(this).val()==this.defaultValue){
							$(this).css("color","#999");
						}	
				});
				/*列表奇偶行变色*/
				$(".liushui-box li:odd span,.hetong-box li:odd span,#bd_ht_id li:odd span,#bd_ls_id li:odd span").css("background","#eaf4fb");
				/*已绑定俩者间距*/
				$(".connect-ul-box ul:even ").css("margin-right","4px");
				/*合同绑定事件*/
				$(".hetong-add").click(function(){
					$(".hetong-box li:odd span").removeAttr("style");
					var check=$(".hetong-box li span").find("input[type=radio]:checked");
					var bdhtNum = $("#bd_ht_id").find("li").length;
					//获取已选中的li中的合同编号
					if(check.length==0){
						alert("请选择合同");
						return;
					}
					var a = check[0].nextSibling.data;
					var glContractNo =queryContractByExt1(a);
					if(null!=glContractNo){
						//循环所有的Li判断其中的合同编号和已选编号相同的将添加到右侧的Li中
						 var s_ = $(".hetong-box li span").find("input[type=radio]");
						//如果选中的合同号存在同一批次的数据，将当前同一批次的li添加到ul中
							for (var  k= 0; k < s_.parents("li").length; k++) {
// 								alert(glContractNo);
// 								alert("选择的:"+s_[k].nextSibling.data);
// 								alert(isContains(glContractNo, s_[k].nextSibling.data));
								if(isContains(glContractNo, s_[k].nextSibling.data)){
									$("#bd_ht_id").append(s_.parents("li")[k]);
								}
							}
					}else{
						if(bdhtNum>0){
							var checkLi = check.parents("li");
							if (bdhtNum % 2 == 1) {
								checkLi.find("span").css("background","#eaf4fb");
							}
							$("#bd_ht_id").append(check.parents("li"));
						} else{
							$("#bd_ht_id").html(check.parents("li"));
						}
					}
					$(".hetong-box li:odd span").css("background","#eaf4fb");
				});
				/*合同绑定解除*/
				$("#hetong-remove").click(function(){
					$("#bd_ht_id li:odd span").removeAttr("style");
					var check=$("#bd_ht_id li span").find("input[type=radio]:checked");
					var bdhtNum = $("#hetong-box").find("li").length;
					//获取已选中的li中的合同编号
					if(check.length==0){
						alert("请选择要操作的合同");
						return;
					}
					var a_ = check[0].nextSibling.data;
					var glContractNo_ =queryContractByExt1(a_);//获取同一批次的合同信息
					if(null!=glContractNo_){
						//循环所有的Li判断其中是否包含在同一批次流水中
						 var s_ = $("#bd_ht_id li span").find("input[type=radio]");
						//如果选中的合同号存在同一批次的数据，将当前同一批次的li添加到ul中
							for (var  x= 0; x < s_.parents("li").length; x++) {
								if(glContractNo_.indexOf(s_[x].nextSibling.data) > -1){
									$("#hetong-box").append(s_.parents("li")[0]);
								}
							}
					}else{
						if(bdhtNum>0){
							var checkLi = check.parents("li");
							if (bdhtNum % 2 == 1) {
								checkLi.find("span").css("background","#eaf4fb");
							}
							$("#hetong-box").append(check.parents("li"));
						} else{
							$("#hetong-box").html(check.parents("li"));
						}
					}
					$("#bd_ht_id li:odd span").css("background","#eaf4fb");
				});
				
				/*流水绑定事件*/
				$("#liushui-add").click(function(){
					$(".liushui-box li:odd span").removeAttr("style");
					var check=$(".liushui-box li span").find("input[type=radio]:checked");
					var bdhtNum = $("#bd_ls_id").find("li").length;
					if(bdhtNum>0){
						var checkLi = check.parents("li");
						if (bdhtNum % 2 == 1) {
							checkLi.find("span").css("background","#eaf4fb");
						}
						$("#bd_ls_id").append(check.parents("li"));
					} else{
						$("#bd_ls_id").html(check.parents("li"));
					}
					$(".liushui-box li:odd span").css("background","#eaf4fb");
				});
				
				/*流水绑定解除*/
				$("#liushui-remove").click(function(){
					$("#bd_ls_id li:odd span").removeAttr("style");
					var check=$("#bd_ls_id li span").find("input[type=radio]:checked");
					var bdhtNum = $("#liushui-box").find("li").length;
					if(bdhtNum>0){
						var checkLi = check.parents("li");
						if (bdhtNum % 2 == 1) {
							checkLi.find("span").css("background","#eaf4fb");
						}
						$("#liushui-box").append(check.parents("li"));
					} else{
						$("#liushui-box").html(check.parents("li"));
					}
					$("#bd_ls_id li:odd span").css("background","#eaf4fb");
				});
				
			});
			
			/**
			 *  查询合同信息
			 */
			function qyeryContractInfo() {
				//获取已经选择的数据，防止重新查询出现数据重复的问题
				var t="";
				$("#bd_ht_id > li").each(function() {
				    var temp_ht = $(this);
				    var tem_hd = temp_ht.text();
				    t+=tem_hd+",";
				});
				var createDate  = $("#createDate").val();
				var contactNo=$("#contactNo").val();
				if(contactNo=="输入合同号查询"){
					alert("请输入合同号");
					return;
				}
				$.ajax({
					type : "POST",
					url : "<%=path%>/contractContinual/queryContactInfo.do",
					data : {
						"createDate":createDate,
						"contactNo":contactNo,
						"houseNo":$("#houseNo").val(),
						"selectContractNo":t
					},
					success : function(data) {
						 $("#hetong-box").html("");
						var html="";
                         if(null!=data.contactInfos && data.contactInfos.length>0){
                        	for(var i=0 ; i<data.contactInfos.length; i++){
                        		html+="<li id='"+data.contactInfos[i].contactNo+"'>";
                        		html+="<span><label><input type='radio' name='hetong' autocomplete='off'  value='"+data.contactInfos[i].contactNo+"'/>"+data.contactInfos[i].contactNo+"</label></span>";
                        		html+="</li>";
                        	}
                         }else{
                        	alert("暂无合同信息!");
                         }
                         $("#hetong-box").append(html);
					}
				});
			}
			/**
			 *  查询支付流水信息
			 */
			function qyeryTranstInfo() {
				var t="";
				$("#bd_ls_id > li").each(function() {
				    var temp_ls = $(this);
				    var lsId = temp_ls.context.childNodes[1].value;
				    t+=lsId+",";
				});
				var sysAccount  = $("#sysAccount").val();
				var transactionDate=$("#transactionDate").val();
				if(sysAccount=="输入系统账号查询"){
					alert("请输入支付账号/银行卡号");
					return;
				}
				 $("#liushui-box").html("");
				$.ajax({
					type : "POST",
					url : "<%=path%>/contractContinual/qyeryTranstInfo.do",
					data : {
						"sysAccount":sysAccount,
						"transactionDate":transactionDate,
						"selectContractTranst":t
					},
					success : function(data) {
						var html="";
                        if(null!=data.accountFlows && data.accountFlows.length>0){
                       	for(var i=0 ; i<data.accountFlows.length; i++){
                       		html+="<li>";
                       		html+="<input type='hidden' id='"+data.accountFlows[i].transactionAmount+"_transactionSeqNum' value='"+data.accountFlows[i].transactionSeqNum+"' />";
                       		html+="<input type='hidden' id='"+data.accountFlows[i].id+"_id' value='"+data.accountFlows[i].id+"' />";
                       		html+="<span><label><input type='radio' name='hetong' autocomplete='off' value='"+data.accountFlows[i].id+"'/>"+data.accountFlows[i].transactionAmount+"</label></span>";
                       		html+="</li>";
                       	}
                        }else{
                       	alert("暂无流水信息!");
                        }
                        $("#liushui-box").append(html); 
					}
				});
			}
			//添加交易流水
			function addTranstInfo(){
				  var url='addContractTransInfo.do';                             //转向网页的地址; 
		           var name='add';                            //网页名称，可为空; 
		           var iWidth=920;                          //弹出窗口的宽度; 
		           var iHeight=600;                         //弹出窗口的高度; 
		           //获得窗口的垂直位置 
		           var iTop = (window.screen.availHeight - 30 - iHeight) / 2; 
		           //获得窗口的水平位置 
		           var iLeft = (window.screen.availWidth - 10 - iWidth) / 2; 
		           window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth=' + iWidth + ',top=' + iTop + ',left=' + iLeft + ',status=no,toolbar=no,menubar=no,location=no,resizable=no,scrollbars=0,titlebar=no'); 
			}
			//根据合同号查询和当前合同同一批次支付的信息
			function queryContractByExt1(v){
				var ret=null;
				$.ajax({
					type : "POST",
					async: false,
					url : "<%=path%>/contractContinual/queryContractByExt1.do",
					data : {
						"contactNo":v
					},
					success : function(data) {
						if(data.message !="error"){
							ret = data.message;
						}
					}
				});
				return ret;
			}
		</script>
		<script type="text/javascript">
$(document).ready(function() {
    /**
	 *  查询合同信息
	 */
	 $("#hetong-box").html("");
		$.ajax({
			type : "POST",
			url : "<%=path%>/contractContinual/queryContactInfo.do",
			data : {
				"contactNo":$("#contactNo").val(),
				"houseNo":$("#houseNo").val()
			},
			success : function(data) {
				var html="";
				 $("#hetong-box").html("");
                 if(null!=data.contactInfos && data.contactInfos.length>0){
                	for(var i=0 ; i<data.contactInfos.length; i++){
                		html+="<li id='"+data.contactInfos[i].contactNo+"'>";
                		html+="<span><label><input type='radio' name='hetong' autocomplete='off'/>"+data.contactInfos[i].contactNo+"</label></span>";
                		html+="</li>";
                	}
                 }
                 $("#hetong-box").append(html);
			}
		});
		
		var isOpen = 0;
	    //全局变量，判断是否已经打开弹出框
	    $("#btnDel").click(function() {
	        //$(".box-mask").css({"display":"block"});
	        $(".box-mask").fadeIn(500);
	        center($(".pop_box"));
	        //载入弹出窗口上的按钮事件
	        checkEvent($(this).parent(), $(".btnCancel"),$(".cancle"));
	    });
	    function center(obj) {
	        //obj这个参数是弹出框的整个对象
	        var screenWidth = $(window).width(), screenHeigth = $(window).height();
	        //获取屏幕宽高
	        var scollTop = $(document).scrollTop();
	        //当前窗口距离页面顶部的距离
	        var objLeft = (screenWidth - obj.width()) / 2;
	        ///弹出框距离左侧距离
	        var objTop = (screenHeigth - obj.height()) / 2 + scollTop;
	        ///弹出框距离顶部的距离
	        obj.css({
	            left:objLeft + "px",
	            top:objTop + "px"
	        });
	        obj.fadeIn(500);
	        //弹出框淡入
	        isOpen = 1;
	        //弹出框打开后这个变量置1 说明弹出框是打开装填
	        //当窗口大小发生改变时
	        $(window).resize(function() {
	            //只有isOpen状态下才执行
	            if (isOpen == 1) {
	                //重新获取数据
	                screenWidth = $(window).width();
	                screenHeigth = $(window).height();
	                var scollTop = $(document).scrollTop();
	                objLeft = (screenWidth - obj.width()) / 2;
	                var objTop = (screenHeigth - obj.height()) / 2 + scollTop;
	                obj.css({
	                    left:objLeft + "px",
	                    top:objTop + "px"
	                });
	                obj.fadeIn(500);
	            }
	        });
	        //当滚动条发生改变的时候
	        $(window).scroll(function() {
	            if (isOpen == 1) {
	                //重新获取数据
	                screenWidth = $(window).width();
	                screenHeigth = $(window).height();
	                var scollTop = $(document).scrollTop();
	                objLeft = (screenWidth - obj.width()) / 2;
	                var objTop = (screenHeigth - obj.height()) / 2 + scollTop;
	                obj.css({
	                    left:objLeft + "px",
	                    top:objTop + "px"
	                });
	                obj.fadeIn(500);
	            }
	        });
	    }
	    //导入两个按钮事件 obj整个页面的内容对象，obj1为确认按钮，obj2为取消按钮
	    function checkEvent(obj, obj1, obj2) {
	        //确认后删除页面所有东西
	        obj1.click(function() {
	            //移除所有父标签内容
	            obj.remove();
	            //调用closed关闭弹出框
	            closed($(".box-mask"), $(".pop_box"));
	        });
	        //取消按钮事件
	        obj2.click(function() {
	            //调用closed关闭弹出框
	            closed($(".box-mask"), $(".pop_box"));
	        });
	    }
	    //关闭弹出窗口事件
	    function closed(obj1, obj2) {
	        obj1.fadeOut(500);
	        obj2.fadeOut(500);
	        isOpen = 0;
	    }
});

//保存合同和流水绑定
function saveConTrans(){
	var contractStr="";
	var contractTranStr="";
	$("#bd_ht_id > li").each(function() {
	    var temp_ht = $(this);
	    var tem_hd = temp_ht.text();
	    contractStr+=tem_hd+"@";
	});
	$("#bd_ls_id > li").each(function() {
	    var temp_ls = $(this);
	    var tem_ls = temp_ls.text();
	    var lsId = temp_ls.context.childNodes[0].value;
	    contractTranStr+=tem_ls+"||"+lsId+"@";
	});
	if(""==contractStr){
		alert("请选择合同");
		return;
	}
	if(""==contractTranStr){
		alert("请选择流水");
		return;
	}
	$.ajax({
		type : "POST",
		url : "<%=path%>/contractContinual/saveContractTrans.do",
		data : {
			"contractStr":contractStr,
			"contractTranStr":contractTranStr
		},
		success : function(data) {
			if (data.message == '400') {
				alert("传入的合同号为空");
			} else if (data.message == '200') {
				alert("提交成功，状态更新！");
				window.location="<%=path%>/buyerNewHouse/getPageContactInfo.do";
			} else if (data.message == '300') {
				alert("未选择任何记录！");
			}else if (data.message == '001') {
				alert("支付金额超出合同总额,请核对金额!！");
			}else if(data.message=='301'){
			    alert("添加支付金额出错!!");
			}
		}
	});
}
function saveAccountFlows(url){
	//检验数据
	var custId_ = $("#custId_").val();//客户ID
	var sysAccount_=$("#sysAccount_").val();//系统账户
	var custAccount_=$("#custAccount_").val();//客户账户
	var custName_ = $("#custName_").val();//客户名称
	var transactionDate_=$("#transactionDate_").val();//交易日期
	var transactionTime_=$("#transactionTime_").val();//交易时间
	var transactionAmount_=$("#transactionAmount_").val();//交易金额
	var transactionSeqNum_=$("#transactionSeqNum_").val();//交易流水号
	var oppositeCustAccount_=$("#oppositeCustAccount_").val();//交易对手账户
	var oppositeCustAccountName_=$("#oppositeCustAccountName_").val();//交易对手账户名
	var oppositeBankName_=$("#oppositeBankName_").val();//交易对手账户开户行名称
	if(null==custId_ || ""==custId_){
		$("#custId_").focus();
		alert("客户ID不能为空!");
		return;
	}
	if(!/^[0-9]+.?[0-9]*$/.test(custId_)){
		$("#custId_").focus();
		alert("客户ID输入错误，只能是数字!");
		return;
	}
	if(null==custName_ || ""==custName_){
		$("#custName_").focus();
		alert("客户名称不能为空!");
		return;
	}
	if(null==sysAccount_ || ""==sysAccount_){
		$("#sysAccount_").focus();
		alert("系统账户不能为空!");
		return;
	}
	if(!/^[A-Za-z0-9]*$/.test(sysAccount_)){
		$("#sysAccount_").focus();
		alert("系统账户输入错误，只能是数字字母!");
		return;
	}
	if(null==custAccount_ || ""==custAccount_){
		$("#custAccount_").focus();
		alert("客户账户不能为空!");
		return;
	}
	if(!/^[0-9]+.?[0-9]*$/.test(custAccount_)){
		$("#custAccount_").focus();
		alert("客户账户输入错误，只能是数字!");
		return;
	}
	
	if(null==transactionDate_ || ""==transactionDate_){
		$("#transactionDate_").focus();
		alert("交易日期不能为空!");
		return;
	}
	if(null==transactionTime_ || ""==transactionTime_){
		$("#transactionTime_").focus();
		alert("交易时间不能为空!");
		return;
	}
	if(null==transactionAmount_ || ""==transactionAmount_){
		$("#transactionAmount_").focus();
		alert("交易金额不能为空!");
		return;
	}
	if(!/^(?!(0[0-9]{0,}$))[0-9]{1,}[.]{0,}[0-9]{0,}$/.test(transactionAmount_)){
		alert("交易金额输入错误!");
		$("#transactionAmount_").focus();
		return;
	}
	if(null==transactionSeqNum_ || ""==transactionSeqNum_){
		$("#transactionSeqNum_").focus();
		alert("交易流水号不能为空!");
		return;
	}
	if(!/^[A-Za-z0-9]*$/.test(transactionSeqNum_)){
		$("#transactionSeqNum_").focus();
		alert("交易流水号输入错误，只能是数字字母!");
		return;
	}
	if(null==oppositeCustAccount_ || ""==oppositeCustAccount_){
		$("#oppositeCustAccount_").focus();
		alert("交易对手账户不能为空!");
		return;
	}
	if(!/^[0-9]+.?[0-9]*$/.test(oppositeCustAccount_)){
		$("#oppositeCustAccount_").focus();
		alert("交易对手账户输入错误，只能是数字!");
		return;
	}
	if(null==oppositeCustAccountName_ || ""==oppositeCustAccountName_){
		$("#oppositeCustAccountName_").focus();
		alert("交易对手账户名称不能为空!");
		return;
	}
	if(null==oppositeBankName_ || ""==oppositeBankName_){
		$("#oppositeBankName_").focus();
		alert("交易对手账户开户行名称不能为空!");
		return;
	}
	$.ajax({
        cache: true,
        type: "POST",
        url:'<%=path%>/contractContinual/checkAccountFlows.do',
        data:$('#PageForm').serialize(),//formid
        async: false,
        error: function(request) {
            alert("系统交互错误!");
        },
        success: function(data) {
        	if(data.message=="ok"){
        		$.ajax({
        	        cache: true,
        	        type: "POST",
        	        url:url,
        	        data:$('#PageForm').serialize(),//formid
        	        async: false,
        	        error: function(request) {
        	            alert("系统交互错误!");
        	        },
        	        success: function(data) {
        	        	if(data.message=="ok"){
        	        		alert("保存成功!");
        	        		$("input[type=reset]").trigger("click");//触发reset按钮 
        	        		 $(".box-mask").fadeOut(500);
        	        		 $(".pop_box").fadeOut(500);
        	        		 
        	        	}else{
        	        		alert("保存失败");
        	        	}
        	        }
        	    });
        	}else{
        		alert("当前流水号["+transactionSeqNum_+"]已经存在");
        	}
        }
    });
}
</script>
</head>
<!--首页中间部分-->
<body>
<div class="eContainer co">
<input type="hidden" id="contactNo" value="${contactNo}">
<input type="hidden" id="houseNo" value="${houseNo}">
	<!--弹出层-->
    <div class="box-mask"></div>
    <div class="pop_box">
    	<p class="Cancel"><a href="" class="btnCancel"></a></p>
        <div class="pop_tetx">
         <form  id="PageForm" name="PageForm" method="post">
         <input type="reset" style="display:none;" /> 
         	<table style="border:#000 0px solid;width:650px;" cellpadding="0" cellspacing="0">
         	 <tr style="height:40px;">
         	  <td style="width: 80px;padding-right:40px;">客户ID</td><td><input type="text" style="height: 25px" id="custId_" name="flows.custId" maxlength="20"/></td><td style="width: 80px;padding-right:40px;">客户名称</td><td><input type="text" id="custName_"  maxlength="50" style="height: 25px"  name="flows.custName"/></td>
         	  </tr>
         	   <tr style="height:40px;">
         	  <td style="width: 80px;padding-right:40px;">系统账户</td><td><input type="text"  style="height: 25px" id="sysAccount_"  name="flows.sysAccount" maxlength="20"/></td><td style="width: 80px;padding-right:40px;">客户账户</td><td><input type="text" id="custAccount_" style="height: 25px" maxlength="50" name="flows.custAccount"/></td>
         	   </tr>
         	   <tr style="height:40px;">
         	  <td style="width: 80px;padding-right:40px;">交易日期</td><td><input type="text" class="Wdate" readonly="readonly" size="16" id="transactionDate_"    style="width:150px;height:16px"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" name="flows.transactionDate"/></td><td style="width: 80px;padding-right:40px;">交易时间</td><td><input type="text" class="Wdate" readonly="readonly" size="16"  style="width:150px;height:16px" id="transactionTime_"  onfocus="WdatePicker({dateFmt:'HH:mm:ss'})" name="flows.transactionTime"/></td>
         	   </tr>
         	   <tr style="height:40px;">
         	  <td style="width: 80px;padding-right:40px;">交易金额</td><td><input type="text"  style="height: 25px" id="transactionAmount_" maxlength="20"  name="flows.transactionAmount"/></td><td style="width: 80px;padding-right:40px;">交易流水号</td><td><input type="text"  style="height: 25px" id="transactionSeqNum_" maxlength="20" name="flows.transactionSeqNum"/></td>
         	   </tr>
         	   <tr style="height:40px;">
         	  <td style="width: 80px;padding-right:40px;">交易对手账户</td><td><input type="text"  style="height: 25px" id="oppositeCustAccount_" maxlength="20" name="flows.oppositeCustAccount"/></td><td style="width: 80px;padding-right:40px;">交易对手账户名称</td><td><input type="text"   style="height: 25px" maxlength="50" id="oppositeCustAccountName_" name="flows.oppositeCustAccountName"/></td>
         	  </tr>
         	  <tr style="height:40px;">
         	  <td style="width: 80px;padding-right:40px;">交易对手账户开户行名称</td><td><input  style="height: 25px"  type="text" id="oppositeBankName_" maxlength="20" name="flows.oppositeBankName"/></td><td style="width: 80px;padding-right:40px;">摘要</td><td><input type="text"  style="height: 25px" maxlength="100" name="flows.memo"/></td>
         	   </tr>
         	</table>
        	<div class="btn_box">
        		<a href="javascript:" class="cancle">取消</a>
        		<a href="javascript:saveAccountFlows('<%=path%>/contractContinual/saveAccountFlows.do');" class="sure">确认</a>
        	</div>
        	</form>
        </div>
    </div>
	<div class="e-wrap">
		<div class="bangd-page co">
			<!--合同-->
			<div class="bangd-item hetong-box fleft">
				<h3>合同</h3>
				<div class="bangd-num">
					<input  class="search-num" type="text" id="contactNo" value="输入合同号查询" autocomplete="off"  onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"/>
					<input type="text" class="Wdate" id="createDate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>     				
				</div>
				<div class="tab-mc">
					<p class="bangd-header">合同名<a style="float:right;margin-top:5px;" href="javascript:qyeryContractInfo()">
										<img src="<%=path%>/images/search-btn.jpg" style="vertical-align:middle; padding-left:10px;">
										</a></p>
					<div class="bangd-info-wrapper">
						<ul id="hetong-box" class="bangd-list">
						</ul>
						<div class="deal-box co">
							<input class="hetong-add add fright" value="" type="submit"></input>
						</div>
					</div>
				</div>
			</div>
			<div class="connect-box fleft">
				<p class="connect-title">绑定显示</p>
				<div class="tab-mc">
					<p class="connect-header"><span>合同名</span> <span>流水号</span></p>
					<div class="bangd-info-wrapper">
						<div class="connect-ul-box">
							<ul class="bangd-list" id="bd_ht_id">
							</ul>
							<ul class="bangd-list" id="bd_ls_id">
							</ul>
						</div>
						<div class="deal-box co">
							<input id="liushui-remove" class="cut fright" value="" type="submit"></input>
							<input id="hetong-remove" class="cut " value="" type="submit"></input>
						</div>
					</div>
				</div>
			</div>
			<div class="bangd-item liushui-box fleft">
				<h3>支付流水</h3>
				<div class="bangd-num">
					<input class="search-num" type="text" id="sysAccount"  value="输入支付账号查询" autocomplete="off" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}" />
					<input type="text" class="Wdate" id="transactionDate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>     				
				</div>
				<div class="tab-mc">
					<p class="bangd-header">流水号
					<a style="float:right;margin-top:5px;" id="btnDel" href="javascript:void(0);">
						<img src="<%=path%>/images/addTr.png" style="vertical-align:middle; padding-left:10px;">
					</a>
					<a style="float:right;margin-top:5px;" href="javascript:qyeryTranstInfo()">
						<img src="<%=path%>/images/search-btn.jpg" style="vertical-align:middle; padding-left:10px;">
					</a>
					</p>
					<div class="bangd-info-wrapper">
						<ul class="bangd-list" id="liushui-box">
						</ul>
						<div class="deal-box co">
							<input id="liushui-add" class="add" value= '' type="submit"></input>
						</div>
					</div>
				</div>
			</div>
		</div>
	    <div class="page-deal">
	    	<a class="save" href="javascript:;" onclick="saveConTrans()"></a>
	    	<a class="back" href="javascript:;" onclick="history.go(-1)"></a>
	    </div>
	</div>
</div>
</body>
</html>
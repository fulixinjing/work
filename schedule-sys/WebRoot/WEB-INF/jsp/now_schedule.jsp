<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>任务管理系统</title>
<link rel="stylesheet" type="text/css" href="${ctx}/css/common.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/right1.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/colorbox.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/pop.css" />
<script type="text/javascript" src="${ctx}/js/jquery.min.js"></script>

<link href="${ctx}/css/defaultTheme1.css" rel="stylesheet" media="screen" />
<link href="${ctx}/css/myTheme1.css" rel="stylesheet" media="screen" />
<script type="text/javascript" src="${ctx}/js/My97DatePicker/WdatePicker.js" ></script>
<script src="${ctx}/js/jquery.fixedheadertable.js"></script>
<script src="${ctx}/js/demo.js"></script>
<script type="text/javascript" src="${ctx}/js/right_js.js"></script>
<script type="text/javascript" src="${ctx}/js/util/common.js"></script>
<script type="text/javascript" src="${ctx}/js/layer/skin/layer.css"></script> 
<script type="text/javascript" src="${ctx}/js/layer/skin/layer.ext.css"></script>
<script type="text/javascript" src="${ctx}/js/layer/layer.min.js"></script>
<script type="text/javascript" src="${ctx}/js/layer/extend/layer.ext.js"></script>
<script src="${ctx}/js/artDialog4.1.7/artDialog.source.js?skin=aero"></script>
<script src="${ctx}/js/artDialog4.1.7/iframeTools.source.js"></script>
<!-- jquery-ui start -->
<link rel="stylesheet" href="${ctx}/js/jquery_ui/jquery-ui.css">
<script src="${ctx}/js/jquery_ui/jquery-ui.js"></script>
<script type="text/javascript">
    
</script>
<!-- jquery-ui end -->
</head>
<style>
	html,body{
		height:100%;
		overflow:hidden;
	}
	#bodyTR  td{
		text-align:center;
	}	
</style>
<body>
<form id ="f1" action="${ctx}/schedule/now" method="POST">
<input type="hidden" id="page" name="currentPage" value="${page.currentPage}" />
<input type="hidden" id="maxResult" name="pageSize" value="${page.pageSize}" />
<input type="hidden" id="selectFlag" name="selectFlag" >
<div class="TAB_right">
<h1><b>位置：</b><a href="###">首页</a><span>&gt;</span><a href="###">今日安排</a></h1>
	<div class="retrieve_list">
			<table class="retrieve_table" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td >&nbsp;&nbsp;
							<input class="form_now marginr10 xjrw" type="button" value="新建任务">
							<input class="form_now marginr10" type="button" value="查询" onclick="selectSubmit()">&nbsp;
						</td>																	
					</tr>		
			</table>
	</div>
	<div class="infor_base">
	<div  class="btn_operate">
		</div>
		   <div class="container_12">
        	<div class="grid_8">
        	<form id="listForm" name="listForm" method="post">
        		<table class="fancyTable" id="myTable02" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
        		    <thead>
        		        <tr>
        		        	<th style="width:35px;">序号</th>
        		        	<th><a href="#" style="color:black">任务名称</a></th>
        		        	<th><a href="#" style="color:black">开始时间</a></th>
        		        	<th><a href="#" style="color:black">结束时间</a></th>
        		        	<th><a href="#" style="color:black">提醒</a></th>
        		        	<th><a href="#" style="color:black">优先等级</a></th>
        		        	<th><a href="#" style="color:black">备注</a></th>
        		        	<th><a href="#" style="color:black">创建时间</a></th>
        		        	<th><a href="#" style="color:black">操作</a></th>
        		            
        		        </tr>
        		    </thead>
        		    <tbody id="bodyTR">
        		    <c:forEach items="${page.list}" var="task" varStatus="status">
        		        <tr>
        		         <td>${status.index + 1}</td>
        		         <td>${task.name}</td>
        		         <td>${task.startDate}</td>
        		         <td>${task.endDate}</td>
        		         <td>
        		         	<c:if test="${task.remind == '1'}">是</c:if>
        		         	<c:if test="${task.remind != '1'}">否</c:if>
        		         </td>
        		         <td>
        		         	<c:if test="${task.priority == '1'}"><span style="color: red">高</span></c:if>
        		         	<c:if test="${task.priority == '2'}"><span style="color: orange">中</span></c:if>
        		         	<c:if test="${task.priority == '3'}"><span style="color: green">低</span></c:if>
        		         </td>
        		         <td>${task.remarks}</td>
        		         <td>
        		         <fmt:formatDate value="${task.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
        		         </td>
        		         <td>
        		         	<input class="form_now marginr10 updateTask" type="button" taskId="${task.id}" value="修改"><input class="form_now m7 delTask" type="button" taskId="${task.id}"  value="删除" >
        		         </td>
        		        </tr>
        		        </c:forEach>
        		    </tbody>
        		</table>
        		</form>
        	</div>
        	<div class="clear"></div>
        </div>	
     	<div class="pages">
        	<%@ include file="/common/pagination.jsp" %>
        </div>
	</div>

</div>
</form>
</body>

<script type="text/javascript">
	$(document).ready(function(){
		$(".fht-tbody").css("height", "85%");
		$(".grid_8").css("height","70%");
	})
	//到指定的分页页面
	function topage(page){
		$("#page").val(page);
		$("#listForm").attr("method","POST");
		$("#listForm").attr("action","${ctx}/schedule/now");
		$("#listForm").submit();
	}	
	//到指定的分页页面  页码，每页条数
	function topagePagination(page,maxResult){
		$("#page").val(page);
		$("#maxResult").val(maxResult);
		$("#f1").attr("method","POST");
		$("#f1").attr("action","${ctx}/schedule/now");
		$("#f1").submit();
	}
	function selectSubmit(){
		$("#f1").attr("method","POST");
		$("#f1").attr("action","${ctx}/schedule/now");
		$("#f1").submit();
	}
	$(function(){
		$(".xjrw").click(function(){
			
			 art.dialog.open("${ctx}/schedule/toAdd", {
		         id: 'flag',
		         title: '新建任务',
		         lock:true,
		         width:500,
		     	 height:300
		     },  
		     false);
		})
		$(".updateTask").click(function (){
			var taskId = $(this).attr('taskId');
			 art.dialog.open("${ctx}/schedule/toUpate?id="+taskId, {
		         id: 'flag',
		         title: '修改任务',
		         lock:true,
		         width:500,
		     	 height:300
		     },  
		     false);
		})
		$(".delTask").click(function (){
			var taskId = $(this).attr('taskId');
			art.dialog({  
			    content: '确定要删除吗',  
			    ok: function () { 
			    	var win = art.dialog.open.origin;//来源页面
			    	$.ajax({
						type : 'post',
						url : "${ctx}/schedule/delSchedule",
						data :{'id' : taskId},
						cache : false,
						async : false,
						
						success : function(result) {
							if(result== 'true'){
								
					 			art.dialog.alert("删除成功！",function (){
					 				art.dialog.close(); 
					 				win.location ="${ctx}/schedule/now";
					 			});
							}else{
								art.dialog.alert('删除失败！', '提示信息');
							}
						},
						error : function() {
							art.dialog.alert('请求异常！', '提示信息');
						}
					}); 
			    	art.dialog.alert("删除成功！",function (){
		 				art.dialog.close(); 
		 				win.location ="${ctx}/schedule/now";
		 			});
			    },  
			    cancelVal: '关闭',  
			    cancel: true //为true等价于function(){}  
			});  
		})
	})
</script>
</html>
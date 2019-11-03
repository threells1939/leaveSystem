<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/js/commons.jspf" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 	<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-" crossorigin="anonymous">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" href="${basePath}/css/public.css">
<title>请假任务办理</title>
</head>
<body>
	<h3>任务办理</h3>
	<form  action="workflowAction_submitTask.action" method="POST" class="pure-form pure-form-aligned">
	    <fieldset>
  			<!-- 任务ID -->
  			<s:hidden name="taskId"></s:hidden>
  			<!-- 请假单ID -->
  			<s:hidden name="id"></s:hidden>
			<div class="pure-control-group">  
	            <label for="days">请假天数</label>
	            <s:textfield id="days" name="days" disabled="true"/>
	        </div>
	        <div class="pure-control-group">
	            <label for="content">请假原因</label>
	            <s:textfield name="content" id="content" disabled="true"/>
	        </div>
	        <div class="pure-control-group">
	            <label for="remark">详细说明</label>
	            <s:textarea name="remark" id="remark" style="height:12%; width:50%" disabled="true"/>
	        </div>
	        <div class="pure-control-group">
	            <label for="comment">意见批注</label>
	            <s:textarea name="comment" id="comment" style="height:12%; width:50%"/>
	        </div>
	        <div class="pure-controls">
      			<!-- 使用连线的名称作为按钮 -->
		 		<s:if test="#outcomeList!=null && #outcomeList.size()>0">
		 			<s:iterator value="#outcomeList">
		 				<input type="submit" name="outcome" value="<s:property/>" class="pure-button pure-button-primary"/>
		 			</s:iterator>
		 		</s:if>
	        </div>
	    </fieldset>
	</form>
	
	<hr>
	
	<s:if test="#commentList!=null && #commentList.size()>0">
		<h3>处理情况</h3>
	   	<table class="pure-table pure-table-bordered">
		    <thead>
		        <tr>
		            <th>时间</th>
		            <th>批注人</th>
		            <th>批注信息</th>
		        </tr>
		    </thead>
		    <tbody>
		       <s:iterator value="#commentList">
			        <tr>
			            <td><s:date name="time" format="yyyy-MM-dd HH:mm:ss"/></td>
			            <td><s:property value="userId"/></td>
			            <td><s:property value="fullMessage"/></td>
		        </s:iterator>
		    </tbody>
		</table>
	</s:if>
	<s:else>
		<h3>该任务暂时没有批注信息</h3>
	</s:else>
	
</body>
</html>
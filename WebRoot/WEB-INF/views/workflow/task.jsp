<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/js/commons.jspf" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 	<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-" crossorigin="anonymous">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" href="${basePath}/css/public.css">
<title>任务管理</title>
</head>
<body>
	<h3>任务列表</h3>
	<table class="pure-table pure-table-bordered">
	    <thead>
	        <tr>
	            <th>任务ID</th>
	            <th>任务名称</th>
	            <th>创建时间</th>
	            <th>办理人</th>
	            <th>操作</th>
	        </tr>
	    </thead>
	    <tbody>
			<s:if test="#list!=null && #list.size()>0">
				<s:iterator value="#list">
			        <tr>
			            <td><s:property value="id"/></td>
			            <td><s:property value="name"/></td>
			            <td><s:date name="createTime" format="yyyy-MM-dd HH:mm:ss"/></td>
			            <td><s:property value="assignee"/></td>
			            <td>
			            	<a href="${pageContext.request.contextPath }/workflowAction_viewTaskForm.action?taskId=<s:property value="id"/>">办理任务</a>
							<a target="_blank" href="workflowAction_viewCurrentImage.action?taskId=<s:property value="id"/>">查看当前流程图</a>
			            </td>
			        </tr>
		        </s:iterator>
			</s:if>
	    </tbody>
	</table>
</body>
</html>
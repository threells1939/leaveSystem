<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<head>
	<%@ include file="/js/commons.jspf" %>
	 <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-" crossorigin="anonymous">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
</head>
<body style="background-color:#000">
	<ul class="pure-menu-list">
	    <li><a href="leaveBillAction_home.action" target="main" class="pure-menu-link">请假申请</a></li>
	    <li><a href="workflowAction_listTask.action" target="main" class="pure-menu-link">任务办理</a></li>
	    <li><a href="workflowAction_deployHome.action" target="main" class="pure-menu-link">部署管理</a></li>
	</ul>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/js/commons.jspf" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 	<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-" crossorigin="anonymous">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" href="${basePath}/css/public.css">
<title>请假管理</title>
</head>
<body>
	<h3>新增/修改请假申请</h3>
	<form  action="leaveBillAction_save.action" method="POST" class="pure-form pure-form-aligned">
	    <fieldset>
		    <s:hidden name="id"></s:hidden>
		    <s:hidden name="user.id"></s:hidden>
			<div class="pure-control-group">  
	            <label for="days">请假天数</label>
	            <s:textfield id="days" name="days"/>
	        </div>
	        <div class="pure-control-group">
	            <label for="content">请假原因</label>
	            <s:textfield name="content" id="content"/>
	        </div>
	        <div class="pure-control-group">
	            <label for="remark">详细说明</label>
	            <s:textarea name="remark" id="remark" style="height:25%; width:50%"/>
	        </div>
	        <div class="pure-controls">
	            <button type="submit" class="pure-button pure-button-primary">提交</button>
	        </div>
	    </fieldset>
	</form>
</body>
</html>
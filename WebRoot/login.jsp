<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
	<title>登录页面</title>
	<%@ include file="/js/commons.jspf" %>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A layout example that shows off a responsive product landing page.">
    
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-" crossorigin="anonymous">
    <!--[if lte IE 8]>
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/grids-responsive-old-ie-min.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/grids-responsive-min.css">
    <!--<![endif]-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <!--[if lte IE 8]>
        <link rel="stylesheet" href="${basePath}/css/login-old-ie.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
        <link rel="stylesheet" href="${basePath}/css/login.css">
    <!--<![endif]-->
        
	<script type="text/javascript">
		if(parent != window){
			parent.location.href = window.location.href;
		}
		function func_login(){
			document.forms[0].submit();
		}
	</script>
</head>
<body>、
	<div class="header">
	    <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
	        <a class="pure-menu-heading" href="">Activiti</a>
	    </div>
	</div>
	<div class="splash-container">
	    <div class="splash">
	        <h1 class="splash-head">学生请假管理系统</h1>
	        <p class="splash-subhead">Student leave management system</p>
			<form class="pure-form" action="loginAction_login.action" method="post">
		        <label for="user">用户名</label>
	        	<select name="name" id="user">
               		<option value="学生A">学生A</option>
               		<option value="辅导员A">辅导员A</option>
               		<option value="班主任A">班主任A</option>
               		<option value="副书记A">副书记A</option>
               		<option value="院长A">院长A</option>
               		<option value="学生B">学生B</option>
               		<option value="辅导员B">辅导员B</option>
               		<option value="班主任B">班主任B</option>
               		<option value="副书记B">副书记B</option>
               		<option value="院长B">院长B</option>
               	</select>
		        <button class="pure-button pure-button-primary" onclick="func_login()">登录</button>
			</form>
	    </div>
	</div>
	<div class="footer l-box is-center">
	        Copyright © 2019 All Rights Reserved Powered by 周雨贝 软硕1904 M201976365
	</div>
	<script type="text/javascript">
		document.getElementById("username").focus();
	</script>
</body>
</html>
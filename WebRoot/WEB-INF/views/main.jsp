<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生请假管理系统</title>
</head>
<frameset rows="100px,*" cols="*">
	<noframes>
		<body>﻿ ﻿ ﻿很抱歉，当前浏览器不支持框架功能，请转用新的浏览器。 ﻿ ﻿
		</body>
	</noframes>
	
	<frame name="top" src="loginAction_top.action" scrolling="No" noresize="noresize">
	<frameset cols="200,*">
		 <frame name="left" src="loginAction_left.action" scrolling="No" noresize="noresize" frameborder="0">
		 <frame src="loginAction_welcome.action" name="main" title="mainframe" scrolling="Yes" noresize="noresize" frameborder="0" />
	</frameset>
</frameset>

</html>
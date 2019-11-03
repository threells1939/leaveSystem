<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<%@ include file="/js/commons.jspf" %>
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
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
        <p class="pure-menu-heading">当前登录用户：${sessionScope.globle_user.name }</p>
        <a href="loginAction_logout.action" target="parent">退出登录</a>
    </div>

<!-- 	<table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 	  <tr> -->
<%-- 	    <td height="57" background="${pageContext.request.contextPath }/images/main_03.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0"> --%>
<!-- 	      <tr> -->
<%-- 	        <td width="450" height="57" background="${pageContext.request.contextPath }/images/main_01.gif">&nbsp;</td> --%>
<!-- 	        <td>&nbsp;</td> -->
<!-- 	        <td width="281" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 	          <tr> -->
<%-- 	            <td width="33" height="27"><img src="${pageContext.request.contextPath }/images/main_05.gif" width="33" height="27" /></td> --%>
<%-- 	            <td width="448" background="${pageContext.request.contextPath }/images/main_06.gif"><table width="425" border="0" align="center" cellpadding="0" cellspacing="0"> --%>
<!-- 	              <tr> -->
<%-- 	                <td><div align="right"><span class="STYLE6"><b>当前登录用户：${sessionScope.globle_user.name }</b></span></div></td> --%>
<%-- 	                <td><div align="right"><a href="loginAction_logout.action" target="parent"><img src="${pageContext.request.contextPath }/images/quit.gif" width="69" height="17" /></a></div></td> --%>
<!-- 	              </tr> -->
<!-- 	            </table></td> -->
<!-- 	          </tr> -->
<!-- 	        </table></td> -->
<!-- 	      </tr> -->
<!-- 	    </table></td> -->
<!-- 	  </tr> -->
<!-- 	  <tr> -->
<%-- 	    <td height="40" background="${pageContext.request.contextPath }/images/main_10.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0"> --%>
<!-- 	      <tr> -->
<%-- 	        <td width="194" height="40" background="${pageContext.request.contextPath }/images/main_07.gif">&nbsp;</td> --%>
<!-- 	        <td><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 	          <tr> -->
<%-- 	            <td width="21"><img src="${pageContext.request.contextPath }/images/main_13.gif" width="19" height="14" /></td> --%>
<!-- 	            <td width="300" class="STYLE7"> -->
<!-- 	            </td> -->
<!-- 	            <td>&nbsp;</td> -->
<!-- 	          </tr> -->
<!-- 	        </table></td> -->
<%-- 	        <td width="260" background="${pageContext.request.contextPath }/images/main_11.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0"> --%>
<!-- 	          <tr> -->
<%-- 	            <td width="16%"><span class="STYLE5"></span></td> --%>
<%-- 	            <td width="84%"><div align="center"><span class="STYLE7"> --%>
<!-- 				<div id="test"></div> -->
<%-- 				<script > --%>
<!--  					setInterval("document.getElementById('test').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",100); -->
<%-- 				</script> --%>
<%-- 				</span></div></td> --%>
<!-- 	          </tr> -->
<!-- 	        </table></td> -->
<!-- 	      </tr> -->
<!-- 	    </table></td> -->
<!-- 	  </tr> -->
<!-- 	</table> -->
</body>
</html>
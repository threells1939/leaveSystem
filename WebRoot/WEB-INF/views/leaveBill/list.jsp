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
<title>请假申请</title>
</head>
<body>
	<h3 style="display: inline-block">请假申请列表</h3>
	<button type="button" style="float:right; margin-top:15px" class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath }/leaveBillAction_input.action'">添加请假申请</button>
	<table class="pure-table pure-table-bordered">
	    <thead>
	        <tr>
	            <th>ID</th>
	            <th>请假人</th>
	            <th>天数</th>
	            <th>事由</th>
	            <th>备注</th>
	            <th>时间</th>
	            <th>状态</th>
	            <th>操作</th>
	        </tr>
	    </thead>
	    <tbody>
			<s:if test="#list!=null && #list.size()>0">
				<s:iterator value="#list">
			        <tr>
			            <td><s:property value="id"/></td>
			            <td><s:property value="user.name"/></td>
			            <td><s:property value="days"/></td>
			            <td><s:property value="content"/></td>
			            <td><s:property value="remark"/></td>
			            <td><s:date name="leaveDate" format="yyyy-MM-dd HH:mm:ss"/></td>
			            <td>
		            		<div align="center">
				        		<s:if test="state==0">
				        			初始录入
				        		</s:if>
				 				<s:elseif test="state==1">
				 					审核中
				 				</s:elseif>
				 				<s:else>
				 					审核完成
				 				</s:else>
			            	</div>
			            </td>
			            <td>
		            		<s:if test="state==0">
			        			<a href="${pageContext.request.contextPath }/leaveBillAction_input.action?id=<s:property value="id"/>" >修改</a>
								<a href="leaveBillAction_delete.action?id=<s:property value="id"/>" >删除</a>
								<a href="${pageContext.request.contextPath }/workflowAction_startProcess.action?id=<s:property value="id"/>" >申请请假</a>
			        		</s:if>
			 				<s:elseif test="state==1">
			 					<a href="${pageContext.request.contextPath }/workflowAction_viewHisComment.action?id=<s:property value="id"/>" >查看审核记录</a>
			 				</s:elseif>
			 				<s:else>
			 					<a href="leaveBillAction_delete.action?id=<s:property value="id"/>" >删除</a>
			 					<a href="${pageContext.request.contextPath }/workflowAction_viewHisComment.action?id=<s:property value="id"/>" >查看审核记录</a>
			 				</s:else>
			            </td>
			        </tr>
		        </s:iterator>
			</s:if>
	    </tbody>
	</table>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'flow.jsp' starting page</title>
  </head>
         
  <body bgcolor="gray">
  <p align ="center"  style="background-color:aqua;font-size:34px;font-weight:bold;color:Black">审批流程管理</p>
    <form action="<%=request.getContextPath()%>/flow/query-seqName.action">
   	<p align="center">	<input type="submit" value="进入添加页面" name=""></p>
   	</form>
   	<form action="<%=request.getContextPath()%>/flow/query-flow.action">
   	<p align="center">	<input type="submit" value="进入查询页面" name=""></p>
   	</form>
  </body>
</html>

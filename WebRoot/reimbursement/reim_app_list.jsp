<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'budget_app_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background-color: silver"> 

      <table border align="center" width="90%">
    		<tr>
    			<td align="center">���</td>
    			<td align="center">��������</td>
    			<td align="center">����</td>
    			<td align="center">��������</td>
    			<td align="center">��������</td>
    		</tr>
    	<s:iterator var="yunyan" value="appList">
    	
    		<tr>
    			<td align="center">${yunyan.rid }</td>
    			<td align="center">${yunyan.rname }</td>
    			<td align="center">${yunyan.rdate }</td>
    			<td align="center">${yunyan.rremark }</td>
    			<td align="center"><a href="check-reim-appr.action?rid=${yunyan.rid }">����</a></td>
    		</tr>
    	</s:iterator>
    </table>

  </body>
</html>

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
  
  <body> 
	<center>������������б�</center>
      <table border align="center" width="800">
    		<tr>
    			<td align="center">���</td>
    			<td align="center">��������</td>
    			<td align="center">����</td>
    			<td align="center">��������</td>
    			<td align="center">��������</td>
    		</tr>
    	<s:iterator var="wuniu" value="frAppList">
    	
    		<tr>
    			<td align="center">${wuniu.rid }</td>
    			<td align="center">${wuniu.rname }</td>
    			<td align="center">${wuniu.rdate }</td>
    			<td align="center">${wuniu.rremark }</td>
    			<td align="center"><a href="check-fr-appr.action?rid=${wuniu.rid }">����</a></td>
    		</tr>
    	</s:iterator>
    </table>

  </body>
</html>

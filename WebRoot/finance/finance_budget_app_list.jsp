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
	<center>预算请款申请列表</center>
	<br/>
      <table border align="center" width="600">
    		<tr>
    			<td align="center">编号</td>
    			<td align="center">预算名称</td>
    			<td align="center">日期</td>
    			<td align="center">进入审批</td>
    		</tr>
    	<s:iterator var="zijiao" value="fbAppList">
    	
    		<tr>
    			<td align="center">${zijiao.bid }</td>
    			<td align="center">${zijiao.bname }</td>
    			<td align="center">${zijiao.bdate }</td>
    			<td align="center"><a href="check-fb-appr.action?bid=${zijiao.bid }">进入</a></td>
    		</tr>
    	</s:iterator>
    </table>

  </body>
</html>

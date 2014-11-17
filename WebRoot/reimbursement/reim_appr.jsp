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
    
    <title>My JSP 'reim_appr.jsp' starting page</title>
    
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
    <center>报销费用表</center>
   
    <table align="center" border width="600">
    	<tr><td align="center" colspan="2">报销申请</td></tr>
     <s:iterator var="honghe" value="apprInfoList">
    	<tr><td align="center" colspan="2">费用类型：${honghe.rtype }</td></tr>
    	<tr>
    		<td align="center">申请人：${honghe.rpname }</td>
    		<td align="center">起始时间：${honghe.rsdate }</td>
    	</tr>
    	<tr>
    		<td align="center">费用数额：${honghe.rsum}</td>
    		<td align="center">结束时间：${honghe.redate }</td>
    	</tr>
    	<tr>
    		<td align="center">所属项目：${honghe.rproject }</td>
    		<td align="center">费用描述：${honghe.rremark }</td>
    	</tr>
    	<tr>
    		<td align="center">人数：${honghe.rpnum }</td>
    		<td align="center">原票据编号或标识：${honghe.rinfo }</td>
    	</tr>
    	<tr>
    		<td align="center">申请时间：${honghe.rdate }</td>
    		<td align="center"><a href="query-rappr-his.action?rid=${honghe.rid }">查看审批过程</a></td>
    	</tr>
    </s:iterator>
    	<tr>
    	</tr>
    </table>
   
    <form action="reim-access-appr.action" method="post">
    	<table align="center" border width="280">
    		<tr><td align="center">同意否 <input type="radio" name="reimapp.raagree" value="1"/> 是 <input type="radio" name="reimapp.raagree" value="0"/> 否</td></tr>
    		<tr><td align="center">意见 <input type="text" name="reimapp.raidea"/></td></tr>
    		<tr><td align="center">日期<input type="text" name="reimapp.radate"/></td></tr>
    	</table>
    	<br/>
    	<center>
    		<input type="submit" value="完 成"/>
    		<input type="reset" value="重 写"/>
    	</center>
    </form>
  </body>
</html>

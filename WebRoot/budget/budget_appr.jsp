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
    
    <title>My JSP 'budget_appr.jsp' starting page</title>
    
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
    <center>预算明细费用表</center>
    <table align="center" border="1" width="80%">
    	<tr>
    		<td align="center" width="30%">明细费用名称</td>
    		<td align="center" width="#%">费用说明</td>
    		<td align="center" width="30%">预算费用数额</td>
    	</tr>
    	<s:iterator var="maha" value="apprFeeList">
    		<tr>
    			<td align="center">${maha.bdetlname }</td>
    			<td align="center">${maha.bfeeshow }</td>
    			<td align="center">${maha.bfeeamount }</td>
    		</tr>
    	</s:iterator>    	
    </table>
    <br/>
   
   		<table align="center" border="1" width="80%">
    		<s:iterator var="ssss" value="apprInfoList">
    			<tr>
    				<td align="center">预算名称: ${ssss.bname }</td>
    				<td align="center">预算日期: ${ssss.bdate }</td>
    			</tr>
    			<tr>
    				<td align="center">周 期 :${ssss.bperiod }</td>
    				<td align="center">合 计: ${ssss.bsum }</td>
    			</tr>
    			<tr>
    				<td align="center" colspan="3">预算备注: ${ssss.bremark }<a href="query-apprpro-his.action?bid=${ssss.bid }">查看审批过程</a> </td>
       			</tr>
    		</s:iterator>
   	 	</table>
  
    <br/>
    <form action="access-appr.action" method="post">
    	<table align="center" border="1" width="35%">
    		<tr><td align="center">同意否 <input type="radio" name="budgetapp.isagree" value="1"/> 是 <input type="radio" name="budgetapp.isagree" value="2"/> 否</td></tr>
    		<tr><td align="center">意见 <input type="text" name="budgetapp.appraddvice"/><input type="hidden" name="budgetapp.uuid" value="${sessionScope.newUser.userid }"/></td></tr>
    		<tr><td align="center">日期<input type="text" name="budgetapp.adate"/></td></tr>
    	</table>
    	<br/>
    	<center>
    		<input type="submit" value="完成"/>
    		<input type="reset" value="重  写"/>
    	</center>
    </form>
  </body>
</html>

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
    <center>Ԥ����ϸ���ñ�</center>
    <table align="center" border="1" width="80%">
    	<tr>
    		<td align="center" width="30%">��ϸ��������</td>
    		<td align="center" width="#%">����˵��</td>
    		<td align="center" width="30%">Ԥ���������</td>
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
    				<td align="center">Ԥ������: ${ssss.bname }</td>
    				<td align="center">Ԥ������: ${ssss.bdate }</td>
    			</tr>
    			<tr>
    				<td align="center">�� �� :${ssss.bperiod }</td>
    				<td align="center">�� ��: ${ssss.bsum }</td>
    			</tr>
    			<tr>
    				<td align="center" colspan="3">Ԥ�㱸ע: ${ssss.bremark }<a href="query-apprpro-his.action?bid=${ssss.bid }">�鿴��������</a> </td>
       			</tr>
    		</s:iterator>
   	 	</table>
  
    <br/>
    <form action="access-appr.action" method="post">
    	<table align="center" border="1" width="35%">
    		<tr><td align="center">ͬ��� <input type="radio" name="budgetapp.isagree" value="1"/> �� <input type="radio" name="budgetapp.isagree" value="2"/> ��</td></tr>
    		<tr><td align="center">��� <input type="text" name="budgetapp.appraddvice"/><input type="hidden" name="budgetapp.uuid" value="${sessionScope.newUser.userid }"/></td></tr>
    		<tr><td align="center">����<input type="text" name="budgetapp.adate"/></td></tr>
    	</table>
    	<br/>
    	<center>
    		<input type="submit" value="���"/>
    		<input type="reset" value="��  д"/>
    	</center>
    </form>
  </body>
</html>

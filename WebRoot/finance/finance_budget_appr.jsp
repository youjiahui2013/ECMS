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
    <table align="center" border width="80%">
    	<tr>
    		<td align="center" width="30%">��ϸ��������</td>
    		<td align="center" width="#%">����˵��</td>
    		<td align="center" width="30%">Ԥ���������</td>
    	</tr>
    	<s:iterator var="meiguihong" value="apprFeeList">
    		<tr>
    			<td align="center">${meiguihong.bdname }</td>
    			<td align="center">${meiguihong.bfeeshow }</td>
    			<td align="center">${meiguihong.bfeeamount }</td>
    		</tr>
    	</s:iterator>    	
    </table>
    <br/>
   		<table align="center" border="1" width="80%">
    		<s:iterator var="hongmei" value="apprInfoList">
    			<tr>
    				<td align="center">Ԥ������ ${hongmei.bname }</td>
    				<td align="center">Ԥ������ ${hongmei.bdate }</td>
    			</tr>
    			<tr>
    				<td align="center">�� �� ${hongmei.bperiod }</td>
    				<td align="center">�� �� ${hongmei.bsum }</td>
    			</tr>
    			<tr>
    				<td align="center" colspan=2>Ԥ�㱸ע ${hongmei.bremark } <a href=".action?bid=${zijiao.bid }">�鿴��������</a></td>
       			</tr>
    		</s:iterator>
   	 	</table>
    <br/>
    <form action="" method="post">
    	<table align="center" border width="35%">
    		<tr><td align="center">ͬ��� <input type="radio" name="ͬ���" value="1"/> �� <input type="radio" name="ͬ���" value="0"/> ��</td></tr>
    		<tr><td align="center">��� <input type="text" name="aidea"/></td></tr>
    		<tr><td align="center">����<input type="text" name="adate"/></td></tr>
    	</table>
    	<br/>
    	<center>
    		<input type="submit" value="ͨ������"/>
    		<input type="button" value="����׼����"/>
    		<input type="reset" value="��  д"/>
    	</center>
    </form>
  </body>
</html>

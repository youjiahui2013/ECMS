<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ajax_reim_detl_fee.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript">
		function add()
	{
		

	 var varTrr=document.getElementById('id_table').getElementsByTagName('tr');
	 var sum=0;
	 for(var i=1;i<varTrr.length;i++)
	 {
	 	sum+=parseFloat(document.getElementById('id_input').value);	
	 }
	  document.getElementById('id_sum').value=sum;
	}
	</script>
  </head>
  
  <body>
    <table border="1" width="100%" align="center">
    	<tr>
    		<td align="center">明细费用名称</td>
    		<td align="center">费用说明</td>
    		<td align="center">报销费用数额</td>
    	</tr> 
    	<s:iterator var="hongmei" value="rFeeDetail">

    	<tr>
    		<td align="center">${hongmei.rdname }</td>
    		<td align="center">${hongmei.rfeeshow }</td>
    		<td align="center"><input type="text" name="reimaapp.rfeeamount"/></td>
    	</tr>
    	</s:iterator>
    </table>
  </body>
</html>

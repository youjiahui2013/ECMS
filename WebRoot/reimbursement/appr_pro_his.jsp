<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'appr_proc.jsp' starting page</title>
    
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
	<s:iterator var="hongjiao" value="rAppNamr">
		<center> 
			�������ƣ�${hongjiao.bname } �������� 
		</center>
	</s:iterator>
	
	<table align="center" border width="700">
		<tr>
			<td align="center">���</td>
			<td align="center">������</td>
			<td align="center">����</td>
			<td align="center">�������</td>
			<td align="center">ͬ���</td>
		</tr>
		<s:iterator var="lanjiao" value="reimApprHis">
			<tr>
				<td align="center">${lanjiao.rano }</td>
				<td align="center">${lanjiao.name }</td>
				<td align="center">${lanjiao.radate }</td>
				<td align="center">${lanjiao.raidea }</td>
				<td align="center">${lanjiao.raagree }</td>
			</tr>
		</s:iterator>
	</table>
	
  
   
</body>
</html>

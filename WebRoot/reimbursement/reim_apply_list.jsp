<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reim_apply_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<body bgcolor="gray">
   <p align="center" style="font-size:20px;font-weight:bold;">���������嵥���������Ⱥ��ţ�</p>
  
   <form method="post" action="2.jsp" name="form1">
   <table align="center" border width="80%" height="20%">
   <tr align="center"><th>���</th><th>������������</th><th>����</th><th>��������</th><th>������</th><th>��������</th>
   <tr align="center"><td>001</td><td>��ͨ��</td><td>2001-3-3</td><td>ȥ����</td><td>����</td><td><input type="submit" value="����"></td>
   <tr align="center"><td>002</td><td>�ͷ�</td><td>2001-3-4</td><td>�Ի��</td><td>���黨</td><td><input type="submit" value="����" ></td>
   </table>
   </form>
  </body>
</html>

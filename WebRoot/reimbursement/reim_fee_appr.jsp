<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reim_fee_appr.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background-color:#CCCCCC;">
<h3 align="center">��������������</h3>
<table border="1" width="80%" height="30%" align="center">
<tr>
  <th  style="font-weight:lighter " colspan="2">��������</th>
</tr>
<tr>
  <th style="font-weight:lighter " colspan="2">�������ͣ���ͨ��</th>
</tr>
<tr>
  <td width="50%">�����ˣ�&nbsp;&nbsp;<input type="text" name="shenqing"></td>
  <td width="50%">��ʼʱ�䣺<input type="text" name="shenqing"></td>
</tr>
<tr>
  <td width="50%">�������<input type="text" name="shenqing"></td>
  <td width="50%">����ʱ�䣺<input type="text" name="shenqing"></td>
</tr>
<tr>
  <td width="50%">������Ŀ��<input type="text" name="shenqing"></td>
  <td width="50%">����������<input type="text" name="shenqing"></td>
</tr>
<tr>
  <td width="50%">��&nbsp;&nbsp;����&nbsp;&nbsp;<input type="text" name="shenqing"></td>
  <td width="50%">ԭƱ�ݵı�Ż��ʶ��<input type="text" name="shenqing" size=18></td>
</tr>
<tr>
  <td width="50%">����ʱ�䣺<input type="text" name="shenqing"></td>
  <form action="right.jsp"><td width="50%" align="center"><input type="submit" name="Submit" value="�鿴���������"></td><form>
</tr>
</table><br>
<table border="1" width="40%" height="15%" align="center">
<tr>
  <td align="center">ͬ���&nbsp;&nbsp;<input type="radio" name="yes" checked="checked">��&nbsp;<input type="radio" name="yes">��</td>
</tr>
<tr><td>���<input type="text" name="agree"></input></td>
</tr>
<tr><td>����&nbsp;<input type="text" name="year" size=5>��<input type="text" name="month" size=6></input>��<input type="text" name="day" size=5></input>��</td>
</tr>
</table><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
<input type="button" name="yes" value="ͨ�����">&nbsp;&nbsp;
<input type="button" name="yes" value="���ϸ��˻�������">&nbsp;&nbsp;
<input type="button" name="yes" value="��д">
</center>


</body>
</html>

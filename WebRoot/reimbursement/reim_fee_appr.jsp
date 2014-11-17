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
<h3 align="center">报销费用审批表</h3>
<table border="1" width="80%" height="30%" align="center">
<tr>
  <th  style="font-weight:lighter " colspan="2">报表申请</th>
</tr>
<tr>
  <th style="font-weight:lighter " colspan="2">费用类型：交通费</th>
</tr>
<tr>
  <td width="50%">申请人：&nbsp;&nbsp;<input type="text" name="shenqing"></td>
  <td width="50%">起始时间：<input type="text" name="shenqing"></td>
</tr>
<tr>
  <td width="50%">费用数额：<input type="text" name="shenqing"></td>
  <td width="50%">结束时间：<input type="text" name="shenqing"></td>
</tr>
<tr>
  <td width="50%">所属项目：<input type="text" name="shenqing"></td>
  <td width="50%">费用描述：<input type="text" name="shenqing"></td>
</tr>
<tr>
  <td width="50%">人&nbsp;&nbsp;数：&nbsp;&nbsp;<input type="text" name="shenqing"></td>
  <td width="50%">原票据的编号或标识：<input type="text" name="shenqing" size=18></td>
</tr>
<tr>
  <td width="50%">申请时间：<input type="text" name="shenqing"></td>
  <form action="right.jsp"><td width="50%" align="center"><input type="submit" name="Submit" value="查看具体申请表"></td><form>
</tr>
</table><br>
<table border="1" width="40%" height="15%" align="center">
<tr>
  <td align="center">同意否&nbsp;&nbsp;<input type="radio" name="yes" checked="checked">是&nbsp;<input type="radio" name="yes">否</td>
</tr>
<tr><td>意见<input type="text" name="agree"></input></td>
</tr>
<tr><td>日期&nbsp;<input type="text" name="year" size=5>年<input type="text" name="month" size=6></input>月<input type="text" name="day" size=5></input>日</td>
</tr>
</table><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
<input type="button" name="yes" value="通过审核">&nbsp;&nbsp;
<input type="button" name="yes" value="不合格退回申请者">&nbsp;&nbsp;
<input type="button" name="yes" value="重写">
</center>


</body>
</html>

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
   <p align="center" style="font-size:20px;font-weight:bold;">报销申请清单（按日期先后排）</p>
  
   <form method="post" action="2.jsp" name="form1">
   <table align="center" border width="80%" height="20%">
   <tr align="center"><th>编号</th><th>报销申请名称</th><th>日期</th><th>报销描述</th><th>报销人</th><th>进入审批</th>
   <tr align="center"><td>001</td><td>交通费</td><td>2001-3-3</td><td>去美国</td><td>陈龙</td><td><input type="submit" value="进入"></td>
   <tr align="center"><td>002</td><td>餐费</td><td>2001-3-4</td><td>吃火锅</td><td>李麻花</td><td><input type="submit" value="进入" ></td>
   </table>
   </form>
  </body>
</html>

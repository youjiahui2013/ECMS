<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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
  
<body style ="background-color:Silver">
<h3 align="center">预算名称：ABC审批过程</h3>
   <table border="1" width="100%">
   
   <tr><th> 编号</th> <th> 审批人</th><th>日期 </th><th> 审批意见</th><th>同意否</th>
   <tr><th>1</th><th>审批人1</th><th>2001-3-3</th><th>ssssss</th><th>是</th>
   <tr><th>2</th><th>审批人2</th><th>2001-3-4</th><th>xxxxxxxx</th><th>是</th>
   <tr>  
   


   </table>
   
</body>
</html>

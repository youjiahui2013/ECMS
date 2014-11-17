<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'appr_tache_select.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background-color: Silver">
<form action="" Method="post">
<table border align="center">
<tr><th>审批单元
<select name=shenP>
        <option id=shenP1 value="shenP1">审批环节1
        <option id=shenP2 value="shenP2">审批环节2
        <option id=shenP3 value="shenP3">审批环节3
</option>
</select>
</th>
<tr><td>审批环节列表（次序为先后次序）<br>

<p align=center><textarea name=comment rows=6 cols=20>
审批人1
审批人2
审批人3
</textarea></p><br>
是否先经过财务审批
<input type=radio name=审核>是
<input type=radio name=审核>否


</td>
<tr><td>

<p align=center>

<input type="button" value="确定">
<input type="button" value="重选" onclick=showMan()>

</td>

</table>

</form>
  </body>
</html>

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
<tr><th>������Ԫ
<select name=shenP>
        <option id=shenP1 value="shenP1">��������1
        <option id=shenP2 value="shenP2">��������2
        <option id=shenP3 value="shenP3">��������3
</option>
</select>
</th>
<tr><td>���������б�����Ϊ�Ⱥ����<br>

<p align=center><textarea name=comment rows=6 cols=20>
������1
������2
������3
</textarea></p><br>
�Ƿ��Ⱦ�����������
<input type=radio name=���>��
<input type=radio name=���>��


</td>
<tr><td>

<p align=center>

<input type="button" value="ȷ��">
<input type="button" value="��ѡ" onclick=showMan()>

</td>

</table>

</form>
  </body>
</html>

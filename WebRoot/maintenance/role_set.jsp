<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'role_set.jsp' starting page</title>
    
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
	<form action="insert-role-perm.action" method="post">
     <table border="1" width="50%" align="center">
     	<tr>
     		<td>
     			��ɫ: 
     			<input type="radio" name="userbean.role.id" value="1">��ͨԱ��
     			<input type="radio" name="userbean.role.id" value="2">������<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     			<input type="radio" name="userbean.role.id" value="3">������Ա
     			<input type="radio" name="userbean.role.id" value="4">����Ա
      		</td>
      	</tr>
      	<tr>
      		<td>
      			Ȩ�ޣ�
      			<input type="checkbox" name="userbean.pno" value="1">Ԥ�㱨������
      			<input type="checkbox" name="userbean.pno" value="2">ϵͳ�����ά��
      			<input type="checkbox" name="userbean.pno" value="3">Ԥ�㱨������
      			<input type="checkbox" name="userbean.pno" value="4">�������ͷ���ͳ��
      		</td>
      	</tr>
      	<tr>
      		<td align="center">
      			<input type="submit" value="���"> 
      			<input type="reset" value="����">
      		</td>
      	</tr>
      </table>
     </form>
</body>
</html>

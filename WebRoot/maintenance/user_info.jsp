<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_info.jsp' starting page</title>
    
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
<center>��Ա��Ϣ�б�</center>
   <table border="1" width="80%" align="center">
   
   <tr>
    <td> �û�����</td>
    <td> ��������</td>
    <td>  �û�ID </td> 
    <td> �û���ɫ</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
        <td>&nbsp;</td>
    
   </tr>

   <s:iterator var="selectuser" value="userlist">
   <tr>
   			<td>${selectuser.username }</td>
    		<td>${selectuser.dept.name}</td>
    		<td>${selectuser.userid }</td>
    		<td>${selectuser.role.name }</td>
    		<td><a href="view-perm.action?rid=${selectuser.userid }">�鿴Ȩ��</a></td>
   			<td>
   				<a href="change-user.action?cuid=${selectuser.userid }">�޸�</a>
   			</td>
   			<td>
   				<a href="delete-user.action?uid=${selectuser.userid}">ɾ��</a>
   			</td>
   </tr>
   </s:iterator>
   </table>
</body>
</html>

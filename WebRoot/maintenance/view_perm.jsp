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
     <table border="1" width="30%" align="center">
     	<s:iterator var="roleperm" value="rolepermlist">
     	<tr>
      		<td align="center">
      			�û���ɫ��Ȩ��
      		</td>
      	</tr>
     	<tr>
     		<td>
     			�û�������${roleperm.username }
      		</td>
      	</tr>
      	<tr>
      		<td>
      			��ɫ��&nbsp;${roleperm.role.name }
      		</td>
      	</tr>
      	<tr>
      		<td>
      			Ȩ�ޣ�${roleperm.posname }
      		</td>
      	</tr>
      	</s:iterator>
      </table>
     
</body>
</html>

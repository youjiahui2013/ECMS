<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reim_appr.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <center>�������ñ�</center>
   
    <table align="center" border width="600">
    	<tr><td align="center" colspan="2">��������</td></tr>
     <s:iterator var="honghe" value="apprInfoList">
    	<tr><td align="center" colspan="2">�������ͣ�${honghe.rtype }</td></tr>
    	<tr>
    		<td align="center">�����ˣ�${honghe.rpname }</td>
    		<td align="center">��ʼʱ�䣺${honghe.rsdate }</td>
    	</tr>
    	<tr>
    		<td align="center">�������${honghe.rsum}</td>
    		<td align="center">����ʱ�䣺${honghe.redate }</td>
    	</tr>
    	<tr>
    		<td align="center">������Ŀ��${honghe.rproject }</td>
    		<td align="center">����������${honghe.rremark }</td>
    	</tr>
    	<tr>
    		<td align="center">������${honghe.rpnum }</td>
    		<td align="center">ԭƱ�ݱ�Ż��ʶ��${honghe.rinfo }</td>
    	</tr>
    	<tr>
    		<td align="center">����ʱ�䣺${honghe.rdate }</td>
    		<td align="center"><a href="query-rappr-his.action?rid=${honghe.rid }">�鿴��������</a></td>
    	</tr>
    </s:iterator>
    	<tr>
    	</tr>
    </table>
   
    <form action="reim-access-appr.action" method="post">
    	<table align="center" border width="280">
    		<tr><td align="center">ͬ��� <input type="radio" name="reimapp.raagree" value="1"/> �� <input type="radio" name="reimapp.raagree" value="0"/> ��</td></tr>
    		<tr><td align="center">��� <input type="text" name="reimapp.raidea"/></td></tr>
    		<tr><td align="center">����<input type="text" name="reimapp.radate"/></td></tr>
    	</table>
    	<br/>
    	<center>
    		<input type="submit" value="�� ��"/>
    		<input type="reset" value="�� д"/>
    	</center>
    </form>
  </body>
</html>

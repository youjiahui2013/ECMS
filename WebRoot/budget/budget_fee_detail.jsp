<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'budget_fee_detail.jsp' starting page</title>
    

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 </head>
  
  <body style=background-color:silver>
    <p align="center" style="font-size:34px;font-weight:bold">Ԥ����ϸ�����б�</p> 
	<form action="" method="post">
    <table border width=80% align="center">
    <tr><th align="center" width=30%>��ϸ��������</th>   <th align="center" width=30% >����˵��</th>   <th align="center" width=30% >Ԥ���������</th>
    <tr><th align="center" width=30%>��Ա�ɱ���</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>���÷�</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>����</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>ͨѶ��</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>���ط�</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>��Ŀ����</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    
                                      
  </table>
  
  <p>&nbsp;</p>
  
  <table border width=80% align="center">
  <tr><th align="left" width=50%>Ԥ������<input type="text" name="txtcode"/></th>
  	 <th align="left" width=50%>Ԥ������<input type="text" name="test" class="txt" /></th></tr>
  	 
  <tr><th align="left" width=50%>��&nbsp;��<input id="date1" name="startdate" class="txt" type="text" size="12"/>--<input id="date2" name="enddate" class="txt" type="text" size="12"/></th>
  <th align="left" width=50%>&nbsp;<input type="button" value="�ϼ�"/><input id="txtCode" name="txtCode" class="txt" type="text" /></th></tr>
  
  <tr><th colspan=2>Ԥ�㱸ע<input type=text name=other size=42></th></tr>

  </table>
  <div align=center>  <input id="btnOK" type="submit" value="��� " onclick="baoxiaoshenpidanyuan.html">
<input id="btnCancel" type="reset" value="����" onclick="baoxiaomingxi.html">
</div>
 </form>
  </body>
</html>

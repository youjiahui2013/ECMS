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
    <p align="center" style="font-size:34px;font-weight:bold">预算明细费用列表</p> 
	<form action="" method="post">
    <table border width=80% align="center">
    <tr><th align="center" width=30%>明细费用名称</th>   <th align="center" width=30% >费用说明</th>   <th align="center" width=30% >预算费用数额</th>
    <tr><th align="center" width=30%>人员成本费</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>差旅费</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>风险</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>通讯费</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>公关费</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    <tr><th align="center" width=30%>项目奖金</th>   <th align="center" width=30%><input type="text"/></th>   <th align="center" width=30%><input type="text" name="txtCode" /></th>
    
                                      
  </table>
  
  <p>&nbsp;</p>
  
  <table border width=80% align="center">
  <tr><th align="left" width=50%>预算名称<input type="text" name="txtcode"/></th>
  	 <th align="left" width=50%>预算日期<input type="text" name="test" class="txt" /></th></tr>
  	 
  <tr><th align="left" width=50%>周&nbsp;期<input id="date1" name="startdate" class="txt" type="text" size="12"/>--<input id="date2" name="enddate" class="txt" type="text" size="12"/></th>
  <th align="left" width=50%>&nbsp;<input type="button" value="合计"/><input id="txtCode" name="txtCode" class="txt" type="text" /></th></tr>
  
  <tr><th colspan=2>预算备注<input type=text name=other size=42></th></tr>

  </table>
  <div align=center>  <input id="btnOK" type="submit" value="添加 " onclick="baoxiaoshenpidanyuan.html">
<input id="btnCancel" type="reset" value="重置" onclick="baoxiaomingxi.html">
</div>
 </form>
  </body>
</html>

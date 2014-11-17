 <%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>预算单元.html</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

  </head>
  
<body style="background-color:silver" >
<p style="font-size:20px;font-weight:bold">清单编号：001</p>
<p style="font-size:20px;font-weight:bold">申请人：</p>
    <p style="font-size:18px;font-weight:bold">预算单元</p>

    <select name="budgetapp.bunitid" >
		<option value="0">请选择预算单元</option>
		<s:iterator var="selectunit" value="appList">
        	<option value="${selectunit.bunitid }">${selectdept.bunitname}</option>
        </s:iterator>
        </select>

    <select name="yusuan">
    <option>办公用品购买预算</option>
    <option>工资预算</option>
    </select>


 

  
    <p>&nbsp;</p>
    <p style="font-size:20px;font-weight:bold">明细费用列表</p>
    <form action="left.html" method="get">
<table id="tbDetailUsed" width="16%" style="background-color=white">

   
              <tr><td><input   type="text"  value=人员成本费 ></td></tr>   
              <tr><td><input   type="text"  value=差旅费></td></tr>
              <tr><td><input   type="text"  value=风险></td></tr>
              <tr><td><input   type="text"  value=通讯费></td></tr>
              <tr><td><input   type="text"  value=公关费></td></tr>   
              <tr><td><input   type="text"  value=项目奖金></td></tr>
              <tr><td><input   type="text"  value=" "></td></tr>   


<tr><td><input value="增加" id="add" onclick="addDetailProcess()" type=button>&nbsp;
<input value="删除" id="delete" onclick="delDetailProcess()" type=button>&nbsp;
<input type=submit value="确定">
</td></tr>
</table>
</form>
    
      <SCRIPT   LANGUAGE="JavaScript">   
  <!--   
    
    
  function   addDetailProcess()   
  {   
  var   crrentrow  =  event.srcElement.parentNode.parentNode.rowIndex-1;   
  var   crrentrowHTML  =  document.all("tbDetailUsed").rows[crrentrow].innerHTML;   
  var   newtr  =  document.all("tbDetailUsed").insertRow(crrentrow+1);   
  var   newCellA   =   newtr.insertCell(0);   
//  var   newCellB   =   newtr.insertCell(1);   
//  var   newCellC   =   newtr.insertCell(2);   
//  var   newCellD   =   newtr.insertCell(3);   
  newCellA.innerHTML = document.all("tbDetailUsed").rows[crrentrow].cells[0].innerHTML;   
//  newCellB.innerHTML   =   document.all("tbDetailUsed").rows[crrentrow].cells[1].innerHTML;   
//  newCellC.innerHTML   =   document.all("tbDetailUsed").rows[crrentrow].cells[2].innerHTML;   
//  newCellD.innerHTML   =   document.all("tbDetailUsed").rows[crrentrow].cells[3].innerHTML;   
  //newtr.innerHTML   =   crrentrowHTML;   
  }   
    
    
  function   delDetailProcess()   
  {   
          var   delRow=document.all("tbDetailUsed").deleteRow(event.srcElement.parentNode.parentNode.rowIndex-1);   
  }   
  //-->   
  </SCRIPT>   
    
  </body>
</html>


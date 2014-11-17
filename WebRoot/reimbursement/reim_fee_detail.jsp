<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>reimbursementdetail.jsp</title>
    <script language="JavaScript" type="text/javascript">
 function show(){
	    var name=document.getElementById("name").value;
	    var ID=dovument.getElemntById("ID").value;
	    var pwd=document.getElementById("pwd").value;
	    if(name!=""||ID!=""||pwd!=""){
	        document.form.list.length++;
	        document.form.list.options[document.form.list.length-1].text=name+"    " +ID+"    "+pwd;
	        }
	    else{
	    alert("请将信息填写完整!");
	    }
	}
	</script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
  
<body style="background-color:silver" >
<center>报销明细费用表</center>
<table border width="90%">
<form action=/cgi-bin/post-query method=post>
<tr><th>明细费用名称</th><th>费用说明</th><th>报销费用数额</th>
<tr><th>人员成本费</th><th>KJHKJH</th><th><input type=text name=num></th>
<tr><th>差旅费</th><th>FDSFSDF</th><th><input type=text name=num></th>
<tr><th>风险</th><th>ERWER</th><th><input type=text name=num></th>
<tr><th>通讯费</th><th>CBNCBV</th><th><input type=text name=num></th>
<tr><th>公关费</th><th>HGJ</th><th><input type=text name=num></th>
<tr><th>项目奖金</th><th>UYTIYT</th><th><input type=text name=num></th>
</table>

<P></p>

<table border width="90%" >
<form action=/cgi-bin/post-query method=post>
<tr><th>报销名称<input type=text name=name></th><th>开始时间<input type=text name=year size=3>年<input type=text name=month size =3>月<input type=text name=day size=3>日<input type=text name=time size=3></th>
<tr><th>周期<input type=text name=period></th><th>结束时间<input type=text name=year size=3>年<input type=text name=month size =3>月<input type=text name=day size=3>日<input type=text name=time size=3></th>
<tr><th>所属项目<select name=subject><option>项目1</option><option>项目2</option><option>项目3</option></th>
<th>合计<input type=text name=sum></th>
<tr><th>所属部门<select name=subject><option>部门1</option><option>部门2</option><option>部门3</option></th><th>票据的标示信息<input type=text name=info></th>
<tr><th colspan=2>报销备注<input type=text name=other size=42></th>
</table>
<div align=center>  <input id="btnOK" type="submit" value="申请 " onclick="baoxiaoshenpidanyuan.html">
<input id="btnCancel" type="reset" value="重写" onclick="baoxiaomingxi.html">
   
</body>
</html>


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
	    alert("�뽫��Ϣ��д����!");
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
<center>������ϸ���ñ�</center>
<table border width="90%">
<form action=/cgi-bin/post-query method=post>
<tr><th>��ϸ��������</th><th>����˵��</th><th>������������</th>
<tr><th>��Ա�ɱ���</th><th>KJHKJH</th><th><input type=text name=num></th>
<tr><th>���÷�</th><th>FDSFSDF</th><th><input type=text name=num></th>
<tr><th>����</th><th>ERWER</th><th><input type=text name=num></th>
<tr><th>ͨѶ��</th><th>CBNCBV</th><th><input type=text name=num></th>
<tr><th>���ط�</th><th>HGJ</th><th><input type=text name=num></th>
<tr><th>��Ŀ����</th><th>UYTIYT</th><th><input type=text name=num></th>
</table>

<P></p>

<table border width="90%" >
<form action=/cgi-bin/post-query method=post>
<tr><th>��������<input type=text name=name></th><th>��ʼʱ��<input type=text name=year size=3>��<input type=text name=month size =3>��<input type=text name=day size=3>��<input type=text name=time size=3></th>
<tr><th>����<input type=text name=period></th><th>����ʱ��<input type=text name=year size=3>��<input type=text name=month size =3>��<input type=text name=day size=3>��<input type=text name=time size=3></th>
<tr><th>������Ŀ<select name=subject><option>��Ŀ1</option><option>��Ŀ2</option><option>��Ŀ3</option></th>
<th>�ϼ�<input type=text name=sum></th>
<tr><th>��������<select name=subject><option>����1</option><option>����2</option><option>����3</option></th><th>Ʊ�ݵı�ʾ��Ϣ<input type=text name=info></th>
<tr><th colspan=2>������ע<input type=text name=other size=42></th>
</table>
<div align=center>  <input id="btnOK" type="submit" value="���� " onclick="baoxiaoshenpidanyuan.html">
<input id="btnCancel" type="reset" value="��д" onclick="baoxiaomingxi.html">
   
</body>
</html>


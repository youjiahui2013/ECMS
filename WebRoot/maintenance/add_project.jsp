<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add_project.jsp' starting page</title>
    
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
<table border="2px" align="center" height="50px" width="500px" bgColor="#c0c0c0">
<tr><th colspan=2>�����Ŀ��Ϣ</th>
<tr><td>��Ŀ����<input type="text"></td><td>����ʱ��<input size=3 value=09>��<input size=3>��<input size=3>��</td>
<tr><td>ǩ��������Ա<input size=15></td><td>��Ŀ����<input size=9>--<input size=9><br></td>
<tr><td>��Ŀ����<input type="text"></td><td>����<input></td>
<tr><td>��Ŀ���<input></td><td>��Ŀ��չ<input></td><br>
</table>

<form method="post" name="addform"><br>
   <table border="0" width="300" align="center" bgColor="#c0c0c0">
     <tr><th>��Ա�б�</th><th rowspan=2>
     <input type="button" value="���" onClick="moveOption(document.addform.list1, document.addform.list2)"><br><br>
         <input type="button" value="ɾ��" onClick="moveOption(document.addform.list2, document.addform.list1)">
     </th><th>��Ŀ���Ա</th>
     <tr>
       <td width="40%">
         <select style="width:100%;" multiple name="list1" size="12" ondblclick="moveOption(document.addform.list1, document.addform.list2)">
             <option value="Ա��1">Ա��1</option>
             <option value="Ա��2">Ա��2</option>
             <option value="Ա��3">Ա��3</option>
             </select>
       </td>
       <td width="40%">
         <select style="width:100%;" multiple name="list2" size="12" ondblclick="moveOption(document.addform.list2, document.addform.list1)">
         </select>
       </td>
     </tr>
   </table>
    </form>
    <p align=center><input type="button" value="���">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="����"></p>
   <script language="JavaScript">
 <!--
 function moveOption(e1, e2){
     try{
         for(var i=0;i<e1.options.length;i++){
             if(e1.options[i].selected){
                 var e = e1.options[i];
                 e2.options.add(new Option(e.text, e.value));
                 e1.remove(i);
                i=i-1
             }
         }
         document.addform.city.value=getvalue(document.addform.list2);
     }
     catch(e){}
 }
 function getvalue(geto){
     var allvalue = "";
     for(var i=0;i<geto.options.length;i++){
         allvalue +=geto.options[i].value + ",";
     }
     return allvalue;
}
//--></script>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'role_perm_distribute.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="JavaScript">

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


</script>

  </head>
  
  <body style="background-color: Silver">
    
    <h2 align="center"><b>��Ա��ɫ��Ȩ�޷���</b></h2>
    <table border align="center" width="50%">
    <tr><td width="46%" align="center">Ա���б�</td><td width="8%"> </td><td width="46%" align="center">ѡ������</td></tr>
    
    
  
     <tr>
     <form method="post" name="addform"><td>
    <select style="width:100%;" multiple name="list1" size="12" ondblclick="moveOption(document.addform.list1, document.addform.list2)">    
    <option value="Ա��A">Ա��A</option>
    <option value="Ա��B">Ա��B</option>
    <option value="Ա��C">Ա��C</option>
  </select>
       </td>
       <td width="*" align="center">
         <input type="button" value="����" onClick="moveOption(document.addform.list1, document.addform.list2)"><br>
         <input type="button" value="����" onClick="moveOption(document.addform.list2, document.addform.list1)"><br>
       </td>
       <td>
         <select style="width:100%;" multiple name="list2" size="12" ondblclick="moveOption(document.addform.list2, document.addform.list1)">
         <option value="Ա��D">Ա��D</option>
         <option value="Ա��E">Ա��E</option>
         </select>
       </td>
</tr>
 

    <tr><td colspan=3><form action=cgi-bin/post-query method=POST>
    ��ɫ��<input type=radio name=��ɫ checked> ��ͨԱ�� <input type=radio name=��ɫ> ������ 
    <input type=radio name=��ɫ> ������ <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=radio name=��ɫ> ������Ա
    <input type=radio name=��ɫ> ����Ա
    </form></td></tr>
    <tr><td colspan=3><form action=cgi-bin/post-query method=POST>
    Ȩ�ޣ�<input type=checkbox name=Ȩ�� checked> ���� <input type=checkbox name=Ȩ�� checked> Ԥ�� 
    <input type=checkbox name=Ȩ��> н�ʹ��� <input type=checkbox name=Ȩ��> ͳ��ϵͳ
    </form></td></tr>
    <tr><td colspan=3><form action=cgi-bin/post-query method=POST>
    <center><input type=submit value="���" name="OK">
    <input type=reset value="��д" name="Cancel"></center>
    </form></td></tr>
    </table>
    </body>
</html>

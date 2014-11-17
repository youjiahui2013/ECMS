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
    
    <h2 align="center"><b>人员角色与权限分配</b></h2>
    <table border align="center" width="50%">
    <tr><td width="46%" align="center">员工列表</td><td width="8%"> </td><td width="46%" align="center">选中名单</td></tr>
    
    
  
     <tr>
     <form method="post" name="addform"><td>
    <select style="width:100%;" multiple name="list1" size="12" ondblclick="moveOption(document.addform.list1, document.addform.list2)">    
    <option value="员工A">员工A</option>
    <option value="员工B">员工B</option>
    <option value="员工C">员工C</option>
  </select>
       </td>
       <td width="*" align="center">
         <input type="button" value="右移" onClick="moveOption(document.addform.list1, document.addform.list2)"><br>
         <input type="button" value="左移" onClick="moveOption(document.addform.list2, document.addform.list1)"><br>
       </td>
       <td>
         <select style="width:100%;" multiple name="list2" size="12" ondblclick="moveOption(document.addform.list2, document.addform.list1)">
         <option value="员工D">员工D</option>
         <option value="员工E">员工E</option>
         </select>
       </td>
</tr>
 

    <tr><td colspan=3><form action=cgi-bin/post-query method=POST>
    角色：<input type=radio name=角色 checked> 普通员工 <input type=radio name=角色> 经办人 
    <input type=radio name=角色> 审批人 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=radio name=角色> 财务人员
    <input type=radio name=角色> 管理员
    </form></td></tr>
    <tr><td colspan=3><form action=cgi-bin/post-query method=POST>
    权限：<input type=checkbox name=权限 checked> 报销 <input type=checkbox name=权限 checked> 预算 
    <input type=checkbox name=权限> 薪资管理 <input type=checkbox name=权限> 统计系统
    </form></td></tr>
    <tr><td colspan=3><form action=cgi-bin/post-query method=POST>
    <center><input type=submit value="完成" name="OK">
    <input type=reset value="重写" name="Cancel"></center>
    </form></td></tr>
    </table>
    </body>
</html>

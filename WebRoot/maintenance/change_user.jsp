<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add_user.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	   <script language="JavaScript" type="text/javascript">
 function show(){
	    var name=document.getElementById("name").value;
	    var ID=dovument.getElemntById("ID").value;
	    var pwd=document.getElementById("pwd").value;
	    if(name==""||ID==""||pwd==""){
	        alter("请将信息填写完整!")
	        }
	    else{
	    	alert("添加用户成功！");
	    }
	}
	</script>

  </head>
  
  <body style ="background-color:Silver">
   
  
   <form action="update-user.action" method="post">
   <center>修改用户信息</center>
   <table  width="90%">
   <s:iterator var="chlist" value="chooselist">
   <tr>
   		<td> <div align="left">用户ID:<input type="text" name="userbean.userid" value="${chlist.userid }" id="ID"></div></td> 
   		<td> <div align="left"> 用户密码:<input type="text" name="userbean.password" value="${chlist.password }" id="pwd"></div> </td> 
   	</tr>
   <tr>
   		<td> <div align="left"> 姓名：<input type="text" name="userbean.username" value="${chlist.username }" id="name"></div> 
   		</td> 
   		<td> <div align="left">性别：
   				<input type="radio" property="${chlist.sexy }" name="userbean.sexy" value="1">男
   				<input type="radio" property="${chlist.sexy }" name="userbean.sexy" value="0">女 
            </div> 
   		</td>
   </tr>
   
   <tr>
   	<td>  <div align="left">所属部门 ：
		<select name="userbean.dept.id">
        	<option value="${chlist.dept.id }">${chlist.dept.name }</option>
        </select>
   		</div>
   	</td>
   <td>  <div align="left">所在职位 ：
   <select name="userbean.posid"> 
   		 <option value="${chlist.posid }">${chlist.posname }</option>
   		 </select>
   </div>
    </td>
   </tr>
   <tr>
   	<td>  <div align="left">登陆角色：
   		<select name="userbean.role.id">
   			 <option value="${chlist.role.id }">${chlist.role.name }</option>
   			</select>
  		 </div>
    </td> 
    <td> <div align="left">费用标准 ：
    	<select name="userbean.feeid">
    		 <option value="${chlist.feeid }">${chlist.feename }</option>
    		</select></div>
     </td>
     </tr>
   <tr>
   		<td>  <div align="left">办公电话 ：<input type="text" name="userbean.phone" value="${chlist.phone }"></div></td> 
   		<td> <div align="left">电子邮件：<input type="text" name="userbean.email" value="${chlist.email }"></div></td>
   </tr>
   <tr>
   		<td> 
   			<div align="left">出生日期：
   				<input type="text" name="userbean.borndate" value="${chlist.borndate }">
   			</div>
   		</td> 
   		<td>  <div align="left">婚姻状况：
   <input type="radio" name="婚否" value="1">已婚
   <input type="radio" name="婚否" value="0">未婚</div>
 		</td>
 	</tr>
   <tr>
   		<td> <div align="left"> 移动电话 ：<input type="text" name="移动电话"></div></td> 
   		<td>  <div align="left">邮政编码：<input type="text" name="userbean.code" value="${chlist.code }"></div> </td>
   </tr>
   <tr>
   		<td> <div align="left"> 联系地址：<input type="text" name="userbean.address" value="${chlist.address }"></div></td> 
   		<td>  <div align="left">身份证号码 ：<input type="text" name="userbean.idcardnum" value="${chlist.idcardnum }"></div></td>
   </tr>
   <tr>
   <td colspan="2"> 
   	<div align="center">  
  		 <input type="submit" value="提交"/>
   </div>
  </td>  
   </tr>
   </s:iterator>
 </table>
</form>
</body>
</html>

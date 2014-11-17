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
	--><!--
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

  --></head>
  
  <body style ="background-color:Silver">
   
  
  
   
   <center>新增用户(带*的必填）</center>
   <form action="add-user.action" method="post">
   <table  width="90%">
   
   <tr>
   		<td> <div align="left">用户ID:<input type="text" name="userbean.userid">*</div></td> 
   		<td> <div align="left"> 用户密码:<input type="text" name="userbean.password">*</div> </td> 
   </tr>
   <tr>
   		<td> <div align="left"> 姓名：<input type="text" name="userbean.username">*</div> 
   		</td> 
   		<td> <div align="left">性别：
   			<input type="radio" name="userbean.sexy" value="1">男
   			<input type="radio" name="userbean.sexy" value="0">女 </div> 
   		</td>
   </tr>
   
   <tr>
   	<td>  <div align="left">所属部门 ：
		<select name="userbean.dept.id" >
		<option valuee="0">请选择所属的部门</option>
		<s:iterator var="selectdept" value="selectDeptList">
        	<option value="${selectdept.dept.id }">${selectdept.dept.name }</option>
        </s:iterator>
        </select>
   		*</div>
   	</td>
   <td>  <div align="left">所在职位 ：
   		<select name="userbean.posid"> 
       		<s:iterator var="selectpos" value="selectPosList">
        		<option value="${selectpos.posid }">${selectpos.posname }</option>
        	</s:iterator>
        </select>
   </div>
    </td>
   </tr>
   <tr>
   	<td>  <div align="left">登陆角色：
   		<select name="userbean.role.id">
   			<s:iterator var="selectrole" value="selectRoleList">
        		<option value="${selectrole.role.id }">${selectrole.role.name }</option>
        	</s:iterator>
   		</select>
  		 </div>
    </td> 
    <td> <div align="left">费用标准 ：
    	<select name="userbean.feeid">
    		<s:iterator var="selectfee" value="selectFeeList">
        		<option value="${selectfee.feeid }">${selectfee.feename }</option>
        	</s:iterator>
    		</select></div>
     </td>
     </tr>
   <tr>
   		<td>  <div align="left">办公电话 ：<input type="text" name="userbean.phone"></div></td> 
   		<td> <div align="left">电子邮件：<input type="text" name="userbean.email"></div></td>
   </tr>
   <tr>
   		<td> 
   			<div align="left">出生日期：
   				<input type="text" name="userbean.borndate">
   			</div>
   		</td> 
   		<td>  <div align="left">婚姻状况：
   <input type="radio" name="婚否">已婚
   <input type="radio" name="婚否">未婚</div>
 		</td>
 	</tr>
   <tr>
   		<td> <div align="left"> 移动电话 ：<input type="text" name="移动电话"></div></td> 
   		<td>  <div align="left">邮政编码：<input type="text" name="userbean.code"></div> </td>
   </tr>
   <tr>
   		<td> <div align="left"> 联系地址：<input type="text" name="userbean.address"></div></td> 
   		<td>  <div align="left">身份证号码 ：<input type="text" name="userbean.idcardnum"></div></td>
   </tr>
   <tr>
   <td colspan="2"> 
   	<div align="center">  
  		 
  		 <input id="adduser" type="submit" value="添加 " />
  		 <input id="btnCancel" type="Reset" value="重置"/>
  		
   </div>
  </td>  
   </tr>
 </table>
 </form>
</body>
</html>

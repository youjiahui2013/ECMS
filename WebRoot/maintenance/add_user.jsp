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
	        alter("�뽫��Ϣ��д����!")
	        }
	    else{
	    	alert("����û��ɹ���");
	    }
	}
	</script>

  --></head>
  
  <body style ="background-color:Silver">
   
  
  
   
   <center>�����û�(��*�ı��</center>
   <form action="add-user.action" method="post">
   <table  width="90%">
   
   <tr>
   		<td> <div align="left">�û�ID:<input type="text" name="userbean.userid">*</div></td> 
   		<td> <div align="left"> �û�����:<input type="text" name="userbean.password">*</div> </td> 
   </tr>
   <tr>
   		<td> <div align="left"> ������<input type="text" name="userbean.username">*</div> 
   		</td> 
   		<td> <div align="left">�Ա�
   			<input type="radio" name="userbean.sexy" value="1">��
   			<input type="radio" name="userbean.sexy" value="0">Ů </div> 
   		</td>
   </tr>
   
   <tr>
   	<td>  <div align="left">�������� ��
		<select name="userbean.dept.id" >
		<option valuee="0">��ѡ�������Ĳ���</option>
		<s:iterator var="selectdept" value="selectDeptList">
        	<option value="${selectdept.dept.id }">${selectdept.dept.name }</option>
        </s:iterator>
        </select>
   		*</div>
   	</td>
   <td>  <div align="left">����ְλ ��
   		<select name="userbean.posid"> 
       		<s:iterator var="selectpos" value="selectPosList">
        		<option value="${selectpos.posid }">${selectpos.posname }</option>
        	</s:iterator>
        </select>
   </div>
    </td>
   </tr>
   <tr>
   	<td>  <div align="left">��½��ɫ��
   		<select name="userbean.role.id">
   			<s:iterator var="selectrole" value="selectRoleList">
        		<option value="${selectrole.role.id }">${selectrole.role.name }</option>
        	</s:iterator>
   		</select>
  		 </div>
    </td> 
    <td> <div align="left">���ñ�׼ ��
    	<select name="userbean.feeid">
    		<s:iterator var="selectfee" value="selectFeeList">
        		<option value="${selectfee.feeid }">${selectfee.feename }</option>
        	</s:iterator>
    		</select></div>
     </td>
     </tr>
   <tr>
   		<td>  <div align="left">�칫�绰 ��<input type="text" name="userbean.phone"></div></td> 
   		<td> <div align="left">�����ʼ���<input type="text" name="userbean.email"></div></td>
   </tr>
   <tr>
   		<td> 
   			<div align="left">�������ڣ�
   				<input type="text" name="userbean.borndate">
   			</div>
   		</td> 
   		<td>  <div align="left">����״����
   <input type="radio" name="���">�ѻ�
   <input type="radio" name="���">δ��</div>
 		</td>
 	</tr>
   <tr>
   		<td> <div align="left"> �ƶ��绰 ��<input type="text" name="�ƶ��绰"></div></td> 
   		<td>  <div align="left">�������룺<input type="text" name="userbean.code"></div> </td>
   </tr>
   <tr>
   		<td> <div align="left"> ��ϵ��ַ��<input type="text" name="userbean.address"></div></td> 
   		<td>  <div align="left">���֤���� ��<input type="text" name="userbean.idcardnum"></div></td>
   </tr>
   <tr>
   <td colspan="2"> 
   	<div align="center">  
  		 
  		 <input id="adduser" type="submit" value="��� " />
  		 <input id="btnCancel" type="Reset" value="����"/>
  		
   </div>
  </td>  
   </tr>
 </table>
 </form>
</body>
</html>

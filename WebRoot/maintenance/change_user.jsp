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
	        alter("�뽫��Ϣ��д����!")
	        }
	    else{
	    	alert("����û��ɹ���");
	    }
	}
	</script>

  </head>
  
  <body style ="background-color:Silver">
   
  
   <form action="update-user.action" method="post">
   <center>�޸��û���Ϣ</center>
   <table  width="90%">
   <s:iterator var="chlist" value="chooselist">
   <tr>
   		<td> <div align="left">�û�ID:<input type="text" name="userbean.userid" value="${chlist.userid }" id="ID"></div></td> 
   		<td> <div align="left"> �û�����:<input type="text" name="userbean.password" value="${chlist.password }" id="pwd"></div> </td> 
   	</tr>
   <tr>
   		<td> <div align="left"> ������<input type="text" name="userbean.username" value="${chlist.username }" id="name"></div> 
   		</td> 
   		<td> <div align="left">�Ա�
   				<input type="radio" property="${chlist.sexy }" name="userbean.sexy" value="1">��
   				<input type="radio" property="${chlist.sexy }" name="userbean.sexy" value="0">Ů 
            </div> 
   		</td>
   </tr>
   
   <tr>
   	<td>  <div align="left">�������� ��
		<select name="userbean.dept.id">
        	<option value="${chlist.dept.id }">${chlist.dept.name }</option>
        </select>
   		</div>
   	</td>
   <td>  <div align="left">����ְλ ��
   <select name="userbean.posid"> 
   		 <option value="${chlist.posid }">${chlist.posname }</option>
   		 </select>
   </div>
    </td>
   </tr>
   <tr>
   	<td>  <div align="left">��½��ɫ��
   		<select name="userbean.role.id">
   			 <option value="${chlist.role.id }">${chlist.role.name }</option>
   			</select>
  		 </div>
    </td> 
    <td> <div align="left">���ñ�׼ ��
    	<select name="userbean.feeid">
    		 <option value="${chlist.feeid }">${chlist.feename }</option>
    		</select></div>
     </td>
     </tr>
   <tr>
   		<td>  <div align="left">�칫�绰 ��<input type="text" name="userbean.phone" value="${chlist.phone }"></div></td> 
   		<td> <div align="left">�����ʼ���<input type="text" name="userbean.email" value="${chlist.email }"></div></td>
   </tr>
   <tr>
   		<td> 
   			<div align="left">�������ڣ�
   				<input type="text" name="userbean.borndate" value="${chlist.borndate }">
   			</div>
   		</td> 
   		<td>  <div align="left">����״����
   <input type="radio" name="���" value="1">�ѻ�
   <input type="radio" name="���" value="0">δ��</div>
 		</td>
 	</tr>
   <tr>
   		<td> <div align="left"> �ƶ��绰 ��<input type="text" name="�ƶ��绰"></div></td> 
   		<td>  <div align="left">�������룺<input type="text" name="userbean.code" value="${chlist.code }"></div> </td>
   </tr>
   <tr>
   		<td> <div align="left"> ��ϵ��ַ��<input type="text" name="userbean.address" value="${chlist.address }"></div></td> 
   		<td>  <div align="left">���֤���� ��<input type="text" name="userbean.idcardnum" value="${chlist.idcardnum }"></div></td>
   </tr>
   <tr>
   <td colspan="2"> 
   	<div align="center">  
  		 <input type="submit" value="�ύ"/>
   </div>
  </td>  
   </tr>
   </s:iterator>
 </table>
</form>
</body>
</html>

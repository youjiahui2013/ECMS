<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ajax_budget_detl_fee.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<script language="javascript">
	function add()
	{
		

	 var varTrr=document.getElementById('id_table').getElementsByTagName('tr');
	 var sum=0;
	 for(var i=1;i<varTrr.length;i++)
	 {
	 	sum+=parseFloat(document.getElementById('id_input').value);	
	 }
	  document.getElementById('id_sum').value=sum;
	}

	function cnt()
	{
		var arr = document.getElementsByName('budgetapp.bfeeamount');
		
		var sum = 0.0;
		
		for(var i = 0; i <arr.length;i++)
		{
			
			sum = sum + parseFloat(arr[i].value);
		}
		
		document.getElementById('id_sum').innerText()=sum;
		
	}



</script>
  </head>
  
  <body>

    <table border="1" width="100%" align="center" id="id_table">
    
    <tr>
    	<td>明细费用名称</td>
    	<td>费用说明</td>
    	<td>预算费用数额</td>
    	<td></td>
    </tr>
    	<s:iterator var="selectfee" value="allFeeList">
    	<tr>
    		<td>${selectfee.bdetlname }</td>
    		<td>${selectfee.bfeeshow }</td>
    		<td><input type="text" name="budgetapp.bfeeamount" id="id_input"/>
    		</td>
    		<td>
    			<input type="hidden" name="budgetapp.bdetlid" value="${selectfee.bdetlid}"/>
    		</td>
    	</tr>		
    	</s:iterator>
    	
    </table>
   
  
    
  </body>
</html>

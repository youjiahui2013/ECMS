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
    
    <title>My JSP 'budget_app.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript"  ><!--
	 var xmlHttp;
     function ajaxFunction(condName,condValue)
     {	
		if(window.XMLHttpRequest)
		    {
		   // Firefox, Opera 8.0+, Safari
		    xmlHttp=new XMLHttpRequest();
		    }else{
		         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		         }
		    xmlHttp.onreadystatechange=callback;
		   	url="query-fee-detail.action?"+ condName + "=" + condValue;
				xmlHttp.open("get", url, true);
				xmlHttp.send(null);
	}
	
	function callback() {
		if (xmlHttp.readyState == 4) {
			eval("document.getElementById('divchar').innerHTML = xmlHttp.responseText;");
			}
		}
		
		function cnt()
	{
		var arr = document.getElementsByName('budgetapp.bfeeamount');
		
		var sum = 0.0;
		
		for(var i = 0; i <arr.length;i++)
		{
			
			sum = sum + parseFloat(arr[i].value);
		}
		
		document.getElementById('id_sum').innerText=sum;
		
	}
		
		
	

	</script>
	
  </head>
  <body>
  <form action="insert-detail-fee.action" method="post">
    <table width="1004" height="645" border="1">
      <tr>
        <td width="180" height="639">
        <table width="170" height="368" border="0">
        <tr>
        <s:iterator var="appsum" value="appSum">
        	<td width="100" align="center">申请单号:</td>
        	<td width="80" align="left">${appsum.appnum }</td>
        </s:iterator>
        </tr>
        <tr>
        	<td>&nbsp;</td>
        	<td>&nbsp;</td>
        </tr>
          <tr>
            <td width="180" height="27">预算单元</td>
          </tr>
          <tr>
          
            <td height="60" target="myframe">
			<select name="budgetapp.bunitid" onchange="condName=this.name;condValue=this.value;ajaxFunction(condName,condValue);">
			<option>请选择预算单元</option>
				<s:iterator var="selectappunit" value="appunitList">
        	<option value="${selectappunit.bunitid }">${selectappunit.bunitname}</option>
        		</s:iterator>
        	</select>
        	<a href="select-fee-detail.action" target=""></a>
			</td>
          </tr>
          <tr>
            <td height="26">明细费用列表</td>
          </tr>
          <tr>
            <td height="192">
            		<div id="divchar">
            		
            		</div>
            </td>
          </tr>
          <tr>
            <td height="35"><a href="select-fee-detail.action" target="myframe">确定</a>						
			</td>
          </tr>
          
        </table>
        </td>
       
		<td width="796">
			 
				<p align="center" style="font-size:24px">预算明细费用列表</p>
					<div>
					
  					</div>
  			<table width="700" height="300" align="center">
  				<tr>
  					<td><iframe name="myframe" value="myframe" width="600" frameborder="0" height="300"></iframe></td>
  				</tr>
  			</table>
  			 <table border="1" width="100%" align="center">
  	<tr>
  		<td width="50%" height="39" align="left">预算名称
    		<input type="text" name="budgetapp.bname"/>
    		<input type="hidden" name="budgetapp.appnum" value="${appsum.appnum }"/>
    	</td> 
    	
    	<td align="left" width="50%">预算日期
    		<input type="text" name="budgetapp.bdate" style="width:180px">
    	</td>
    </tr>
    
  	<tr><td width="50%" height="43" align="left">&nbsp;周&nbsp;期：
      	<input id="txtCode" name="budgetapp.bperiod" class="txt" type="text" /></td><td align="left" width="50%">&nbsp;
      	<input type="button" value="合计" onclick="cnt();" >
      	<input name="budgetapp.bsum" type="text" /></td>
    </tr>
  	<tr><td height="48" colspan="2">预算备注
      <input type="text" name="budgetapp.bremark" size="42"></td></tr>
 
  </table>
  	<table width="100%" align="center">
  	<tr>
  		<td align="right">
  		<input type="submit" value="申请"/></td>
  		<td>&nbsp;<input type="reset" value="重写"/></td>
  	</tr>
  
  	</table>
 
  	</td>
  </tr>
  </table>
 	</form>
  </body>
</html>


<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reim_appr_tache.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript"  >
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
		   	url="query-rappr-unit.action?"+ condName + "=" + condValue;
				xmlHttp.open("get", url, true);
				xmlHttp.send(null);
	}
	function callback() {
		if (xmlHttp.readyState == 4) {
			eval("document.getElementById('divchar').innerHTML = xmlHttp.responseText;");
			}
		}
		

	</script>
  </head>
  <body>
  <form action="insert-reim-fid.action" method="post">
  	<table align="center" border="1" width="290">
  		<tr>
  			<td align="center">
  				报销审批单元 <select name="reimapp.fid" onchange="condName=this.name;condValue=this.value;ajaxFunction(condName,condValue);">
  							<option>请选择审批环节</option>
  						<s:iterator var="jimo" value="reimApprFlow">
  							<option value="${jimo.fid }" >${jimo.fname }</option>
  						</s:iterator>	
  						</select>
  			</td>
  		</tr>
  		<tr>
  			<td align="center">
  				审批环节列表 （次序为先后次序）
  			</td>
  		</tr>
  		<tr>
  			<td width="60%" height="200" align="center">
  				<div id="divchar">
  				</div>
  			</td>
  		</tr>
  		<tr>
  			<td align="center">
  				<input type="submit" name="ok" value="确 定"/>&nbsp;&nbsp;&nbsp;<input type="reset" name="cancel" value="重选"/>
  			</td>
  		</tr>
  	</table>
  	</form>
  </body>
</html>

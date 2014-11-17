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
    
    <title>My JSP 'reim_app.jsp' starting page</title>
    
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
		   	url="query-reim-fee.action?"+ condName + "=" + condValue;
				xmlHttp.open("get", url, true);
				xmlHttp.send(null);
	}
	function callback() {
		if (xmlHttp.readyState == 4) {
			eval("document.getElementById('divchar').innerHTML = xmlHttp.responseText;");
			}
		}
		
	function ajaxFeeFunction(condName,condValue)
     {	
		if(window.XMLHttpRequest)
		    {
		   // Firefox, Opera 8.0+, Safari
		    xmlHttp=new XMLHttpRequest();
		    }else{
		         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		         }
		    xmlHttp.onreadystatechange=callfeeback;
		   	url="reim-fee-list.action?"+ condName + "=" + condValue;
				xmlHttp.open("get", url, true);
				xmlHttp.send(null);
	}
	function callfeeback() {
		if (xmlHttp.readyState == 4) {
			eval("document.getElementById('divfee').innerHTML = xmlHttp.responseText;");
			}
		}
		
	</script>
	
  </head>
  <body>
    <table width="1004" height="645" border="1">
      <tr>
        <td width="192" height="639"><table width="186" height="368" border="0">
          <tr>
            <td width="180" height="27">报销单元</td>
          </tr>
          <tr>
          	<s:iterator var="tianzi" value="reimAppSum">
          		<td width="100" align="center">申请单号：</td>
          		<td width="80" align="left">${tianzi.rappsum }</td>
          	</s:iterator>
          </tr>
          <tr>
            <td height="60">
			<select name="reimapp.runitid" onchange="condName=this.name;condValue=this.value;ajaxFunction(condName,condValue);">
			<option>请选择报销单元</option>
				<s:iterator var="chaotianmen" value="reimUnitList">
        	<option value="${chaotianmen.runitid }">${chaotianmen.runame}</option>
        		</s:iterator>
        	</select>
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
            <td height="35"><input type="button" value="确定" onclick="ajaxFeeFunction();">
							
			</td>
          </tr>
          
        </table>
        </td>
		<td width="796">
			<form action="insert-reim-apply.action" method="post">
				<p align="center" style="font-size:24px">报销明细费用列表</p>
					<div id="divfee">
  					</div>
  			<table width="20" align="center">
  				<tr>
  					<td>&nbsp;</td>
  				</tr>
  			</table>
  
  
  <table border="1" width="100%" align="center">
  	<tr><td width="50%" height="39" align="left">报销名称
    	<input type="text" name="reimapp.rname"/></td> 
    	<td align="left" width="50%">开始时间<input type="text" name="reimapp.rsdate" style="width:180px"></td>
    </tr>
    <tr>
    	<td width="50%" height="43" align="left">&nbsp;周&nbsp;期：
      	<input id="txtCode" name="reimapp.rperiod" class="txt" type="text" /></td>
      	<td width="50%" height="43" align="left">结束时间<input type="text" name="reimapp.redate" style="width:180px"></td>
    </tr>
  	<tr>
      	<td>
      		所属项目<input type="text" name="reimapp.rproject" class="txt"/>
      	</td>
      	<td align="left" width="50%">&nbsp;
      	<input type="button" value="合计"/><input id="txtCode" name="reimapp.rsum" class="txt" type="text" /></td>
    </tr>
    <tr>
    	<td>人数<input type="text" name="reimapp.rpnum" class="txt"/></td>
    	<td>票据标识信息<input type="text" name="reimapp.rinfo" class="txt"/></td>
    </tr>
  	<tr><td height="48" colspan="2">报销备注
      <input type="text" name="reimapp.rremark" size="42"></td></tr>
 
  </table>
  <table width="100%" align="center">
  	<tr>
  		<td align="right"><input id="apply" type="submit" value="申请"/></td>
  		<td>&nbsp;<input type="reset" value="重写"/></td>
  	</tr>
  
  </table>
   </form>
  	</td>
  </tr>
  </table>
  </body>
</html>

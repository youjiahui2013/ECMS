<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'app_seccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   
   <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
-->
</style>
<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px 
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
}

</style>
<script>
var he=document.body.clientHeight-105
document.write("<div id=tt style=height:"+he+";overflow:hidden>")
</script>

<script>




function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="image/main_47.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="image/main_48.gif";
}
}

</script>
   
  </head>
  
  <body>
   <table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" background="image/main_40.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19%">&nbsp;</td>
        <td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
      </tr>
    </table></td>
    
    


  </tr>
  <tr>
    <td valign="top"><table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
     <c:choose>
     	<c:when test="${sessionScope.newUser.posname eq '系统管理和维护'}">
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="image/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">系统维护</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="image/main_51.gif" id="submenu1">
			 <div class="sec_menu" >  
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="16%" height="25"><div align="center"><img src="image/left.gif" width="10" height="10" /></div></td>
                    <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">
                          	<a href="maintenance/flow.jsp" target="I2">审批流程管理</a></span>
                          </td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="23"><div align="center"><img src="image/left.gif" width="10" height="10" /></div></td>
                    <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">
                          	<a href="select-user-option.action"  target="I2">添加人员信息</a></span></td>
                        </tr>
                    </table></td>
                  </tr>
                    <tr>
                    <td height="23"><div align="center"><img src="image/left.gif" width="10" height="10" /></div></td>
                    <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3" target="I2">
                          	<a href="maintenance/role_set.jsp" target="I2">角色权限分配</a></span>
                          </td>
                        </tr>
                    </table></td>
                  </tr>
                   <tr>
                    <td height="23"><div align="center"><img src="image/left.gif" width="10" height="10" /></div></td>
                    <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">
                          	<a href="select-user.action"  target="I2">人员信息列表</a></span>
                          </td>
                        </tr>
                    </table></td>
                  </tr>
                  
				 
				 
                </table></td>
              </tr>
              <tr>
                <td height="5"><img src="image/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table></div></td>
          </tr>
          
        </table></td>
        </c:when>
	</c:choose>
      </tr>
    <c:choose>
     <c:when test="${sessionScope.newUser.posname ne '财务工作和费用统计'}">
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="image/main_47.gif" id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">预算</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="image/main_51.gif" id="submenu2">
			<div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                     <c:choose>
     				  <c:when test="${sessionScope.newUser.posname ne '预算报销审批'}">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="image/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                		<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">
                                			<a href="buget-app.action"  target="I2">预算申请</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                       </c:when>
                      </c:choose>
                      <c:choose>
     				   <c:when test="${sessionScope.newUser.posname ne '预算报销申请'}">
                        <tr>
                          <td height="23"><div align="center"><img src="image/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>                    
                                		<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">
                                			<a href="query-applist.action?buget_user_id=${sessionScope.newUser.userid }" target="I2">预算审批</a></span>
                                		</td>                                          
                              </tr>
                          </table></td>
                        </tr>
                       </c:when>
                      </c:choose>
						
                  </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="image/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table></div>
            </td>
          </tr>
        </table>          </td>
      </tr>
     </c:when>
    </c:choose>
    <c:choose>
     <c:when test="${sessionScope.newUser.posname ne '财务工作和费用统计'}">
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="image/main_47.gif" id="imgmenu3" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(3)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">报销</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="image/main_51.gif" id="submenu3">
			<div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <c:choose>
     					<c:when test="${sessionScope.newUser.posname ne '预算报销审批'}">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="image/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                		<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">
                                			<a href="reim-app.action" target="I2">报销申请</a> </span></td>
                              </tr>
                          </table></td>
                        </tr>
                        </c:when>
                       </c:choose>
                       <c:choose>
     						<c:when test="${sessionScope.newUser.posname ne '预算报销申请'}">
                        <tr>
                          <td height="23"><div align="center"><img src="image/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                		<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">
                                			<a href="query-reim-applist.action" target="I2">报销审批</a> </span></td>
                              </tr>
                          </table></td>
                        </tr>
                       </c:when>
                      </c:choose>
						
                  </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="image/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table></div></td>
				</tr>
				</table></td>
        </tr>
       </c:when>
      </c:choose>
    
    </table></td>
  </tr>
  <tr>
    <td height="18" background="image/main_58.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="18"><div align="center" class="STYLE3">版本：2009V1.0</div></td>
      </tr>
    </table></td>
  </tr>
</table>
  </body>
</html>

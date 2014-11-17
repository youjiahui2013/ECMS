<%@ page language="java" import="java.util.*;" pageEncoding="GB18030"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script> 
	  function isfull() {
	  
	  	var username = document.getElementById('id_username').value;
	  	var password = document.getElementById('id_password').value;
	  	
	  	if(username == '' || password == '') {
	  	    alert("用户名或密码都不能为空");
	  		return false;
	  	} else {
	  		return true;
	  	}
		
	}
  </script>

 


		<title>My JSP 'login.jsp' starting page</title>

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
	background-color: #016aa9;
	overflow: hidden;
}

.STYLE1 {
	color: #000000;
	font-size: 12px;
}
-->
</style>

	</head>

	<body>
		<form id="adduser" method="post" action="query-user.action"
			onSubmit="return isfull();">
			<table width="100%" height="100%" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<table width="962" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="235" background="image/login_03.gif">
									&nbsp;
								</td>
							</tr>
							<tr>
								<td height="53">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="394" height="53" background="image/login_05.gif">
												&nbsp;
											</td>
											<td width="206" background="image/login_06.gif">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="16%" height="25">
															<div align="right">
																<span class="STYLE1">用户</span>
															</div>
														</td>
														<td width="57%" height="25">
															<div align="center">
																<input type="text" name="userbean.username"
																	id='id_username'
																	style="width: 105px; height: 17px; background-color: #292929; border: solid 1px #7dbad7; font-size: 12px; color: #6cd0ff">
															</div>
														</td>
														<td width="27%" height="25">
															&nbsp;
														</td>
													</tr>
													<tr>
														<td height="25">
															<div align="right">
																<span class="STYLE1">密码</span>
															</div>
														</td>
														<td height="25">
															<div align="center">
																<input type="password" name="userbean.password"
																	id='id_password'
																	style="width: 105px; height: 17px; background-color: #292929; border: solid 1px #7dbad7; font-size: 12px; color: #6cd0ff">
															</div>
														</td>
														<td height="25">
															<div align="left">
																<input type="submit" value="登录"
																	style="background-color: #292929">
															</div>
														</td>
													</tr>
												</table>
											</td>
											<td width="362" background="image/login_07.gif">
												&nbsp;
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="213" background="image/login_08.gif">
									&nbsp;
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>

</html>

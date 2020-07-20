1<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>加入會員</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
/* span.error { */
/* 	color: red; */
/* 	display: inline-block; */
/* 	font-size: 10pt; */
/* } */

/* .error { */
/* 	color: red; */
/* 	display: inline-block; */
/* 	font-size: 10pt; */
/* } */

/* input[type=text]{ */
/* 	font-size: 12pt; */
/* } */

/* body { */
/* 	background-attachment: fixed; */
/* 	background-color: #EBFFEB; */
/* 	background-repeat: no-repeat; */
/* 	background-position: 20px 50px; */
/* } */

/* h1 { */
/* 	font-family: "標楷體", "新細明體", sans-serif; */
/* 	font-size: 24px; */
/* } */
/* .formBkgnd { */
/* 	color: #FFFFFF; */
/* 	background-color: #666666; */
/* } */
/* label { */
/* 	float:left; */
/* 	width:8em; */
/* 	font-weight:bold; */
/* 	color:#000000; */
/* 	margin-top:10px; */
/* 	margin-bottom:2px; */
/* 	margin-right:10px; */
/* 	text-align: right; */
/* } */

/* br { */
/* 	clear:both; */
/* } */
/* .fieldWidth { */
/*     margin-top:10px; */
/* 	margin-bottom: 2px; */
/* 	width: 200px; */
/* 	background:#F6E497; */
/* 	font-size:1.1em; */
/* } */
/* /* 設定字體大小 */
*
/
/* .fontSize { */
/* 	font-size:1.1em; */
/* } */

/* #main { */
/*     position:relative; */
/* 	left:70px; */
/* 	width:600px; */
/* 	height:543px;	 */
/* 	top: 0px; */
/* 	z-index:2; */
/* 	font-size:0.9em;  */
/* } */
/* /* 設定傳送鈕的樣式 */



 



*
/
/* #submit { */
/* 	width:64px; */
/* 	height:30px; */
/* 	font-size:1.2em */
/* 	color:#FFFFFF; */
/* 	margin-right:1.5em; */
/* 	border-width:2px; */
/* 	border-color: #FFEDAF #B2A268 #B2A268 #FFEDAF; */
/* 	background:#A9A9A9; */
/* } */
/* /* 設定取消鈕的樣式 */



 



*
/
/* #cancel { */
/* 	width:64px; */
/* 	height:30px; */
/* 	font-size:1.2em */
/* 	color:#ffffff; */
/* 	border-width:2px; */
/* 	border-color: #FFEDAF #B2A268 #B2A268 #FFEDAF; */
/* 	background:#a9a9a9; */
/* } */
</style>

</head>
<body>
	<c:set var="funcName" value="REG" scope="session" />
	<!-- 引入共同的頁首 -->
<!-- 	<div align='center' id="content"> -->
	<jsp:include page="Navigation.jsp" />

		<%--   <c:url var='post_url' value='/_01_register/register' /><br> --%>
		<%--   action="${post_url}" --%>
<%-- 		<form:form method="POST" modelAttribute="memberBean" --%>
<%-- 			enctype='multipart/form-data'> --%>

<!-- 			<Table -->
<!-- 				style="width: 900px; background-color: #E7CDFF; cellspacing: 0; border: 2px solid black;"> -->
<!-- 				<tr height="40"> -->
<!-- 					<td colspan='4' style="text-align: center; vertical-align: middle;"> -->
<%-- 						<Font color="#006600" size='6' face="標楷體">${AppName}</Font> --%>
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 				<tr height="36"> -->

<!-- 					<td colspan='4' style="text-align: center; vertical-align: middle;"> -->
<!-- 						<Font color="#006600" size='5' face="標楷體">加入會員</Font> -->
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 				<tr height="16"> -->
<!-- 					<td colspan='4' style="text-align: center; vertical-align: middle;"> -->
<%-- 						<div class="error">${errorSaveData}<br> --%>
<!-- 						</div> -->
<!-- 					</td> -->
<!-- 				</tr> -->

<!-- 				<tr height="52"> -->
<!-- 					<td style="width: 90px;"><label class="fontSize">帳號：</label><br>&nbsp; -->
<!-- 					</td> -->
<%-- 					<td style="width: 290px;"><form:input path='memberId' --%>
<%-- 							class="fieldWidth" style="width: 200px;" /><br>&nbsp; <form:errors --%>
<%-- 							path="memberId" cssClass="error" /></td> --%>
<!-- 					<td><label class="fontSize">姓名：</label><br>&nbsp;</td> -->
<%-- 					<td><form:input path='name' class="fieldWidth" --%>
<%-- 							style="width: 200px;" /><br>&nbsp; <form:errors path="name" --%>
<%-- 							cssClass="error" /></td> --%>
<!-- 				<tr height="52"> -->
<!-- 					<td><label class="fontSize">密碼：</label><br>&nbsp;</td> -->
<%-- 					<td><form:input path='password' class="fieldWidth" --%>
<%-- 							style="width: 200px;" /><br>&nbsp; <form:errors --%>
<%-- 							path="password" cssClass="error" /></td> --%>
<!-- 					<td><label class="fontSize">密碼確認：</label><br>&nbsp;</td> -->
<%-- 					<td><form:input path='password1' class="fieldWidth" --%>
<%-- 							style="width: 200px;" /><br>&nbsp; <form:errors --%>
<%-- 							path="password1" cssClass="error" /></td> --%>

<!-- 				</tr> -->
<!-- 				<tr height="52"> -->
<!-- 					<td><label class="fontSize">地址：</label><br>&nbsp;</td> -->
<%-- 					<td><form:input path='address' class="fieldWidth" --%>
<%-- 							style="width: 200px;" /><br>&nbsp; <form:errors --%>
<%-- 							path="address" cssClass="error" /></td> --%>
<!-- 					<td><label class="fontSize">電話：</label><br>&nbsp;</td> -->
<%-- 					<td><form:input type='text' path='tel' class="fieldWidth" --%>
<%-- 							style="width: 200px;" /><br>&nbsp; <form:errors path="tel" --%>
<%-- 							cssClass="error" /></td> --%>
<!-- 				</tr> -->
<!-- 				<tr height="52"> -->
<!-- 					<td><label class="fontSize">電子郵件：</label><br>&nbsp;</td> -->
<%-- 					<td><form:input type='text' path='email' class="fieldWidth" --%>
<%-- 							style="width: 200px;" /><br>&nbsp; <form:errors --%>
<%-- 							path="email" cssClass="error" /></td> --%>
<!-- 					<td><label class="fontSize">照片：</label><br>&nbsp;</td> -->
<%-- 					<td><form:input path="memberMultipartFile" type='file' /><br>&nbsp; --%>
<%-- 						<form:errors path="memberMultipartFile" cssClass="error" /></td> --%>
<!-- 				</tr> -->
<!-- 				<tr height="42"> -->
<!-- 					<td colspan='4'> -->
<!-- 						<div id="btnArea" align="center"> -->
<!-- 							<input type="submit" name="submit" id="submit" value="儲存" /> <input -->
<!-- 								type="reset" name="cancel" id="cancel" value="重填"> -->
<!-- 						</div> -->
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 			</Table> -->
<%-- 		</form:form> --%>
<!-- 	</div> -->



	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">
						<h1>註冊</h1>
					</div>
					<div class="card-body">
						<form:form method="POST" modelAttribute="memberBean"
							enctype='multipart/form-data'>
							<div class="form-group">
								<label for="memberId" class="cols-sm-2 control-label">帳號</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span>
										<form:input path='memberId' class="form-control"
											placeholder="請輸入您的帳號" />
										<form:errors path="memberId" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">姓名</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span>
										<form:input path='name' class="form-control"
											placeholder="請輸入您的姓名" />
										<form:errors path="name" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="cols-sm-2 control-label">Email</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span>
										<form:input type='text' path='email' class="form-control"
											placeholder="請輸入您的Email" />
										<form:errors path="email" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="cols-sm-2 control-label">密碼</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
										<form:input path='password' type="password"
											class="form-control" name="password" id="password"
											placeholder="請輸入您的密碼" />
										<form:errors path="password" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="cols-sm-2 control-label">確認密碼</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
										<form:input path='password1' type="password"
											class="form-control" placeholder="再次確認您的密碼" />
										<form:errors path="password1" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="address" class="cols-sm-2 control-label">地址</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span>
										<form:input path='address' class="form-control"
											placeholder="請輸入您的地址" />
										<form:errors path="address" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="tel" class="cols-sm-2 control-label">電話</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span>
										<form:input type='text' path='tel' class="form-control"
											placeholder="請輸入您的電話" />
										<form:errors path="tel" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="tel" class="cols-sm-2 control-label">照片上傳</label>
								<form:input path="memberMultipartFile" type='file' />
								<form:errors path="memberMultipartFile" />
							</div>
							<div id="btnArea" align="center">
								<input type="submit" name="submit" id="submit" value="儲存" /> <input
									type="reset" name="cancel" id="cancel" value="重填">
							</div>
							<div class="login-register">
											<a href="<c:url value='/_02_login/login' />">已經有帳號?</a>
							</div>
						</form:form>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>
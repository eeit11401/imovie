<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/login.css' type="text/css" />
<style>
	.animate form{
	position: absolute;
	top: 0px;
	width: 88%;	
	padding: 18px 6% 60px 6%;
	margin:0  35px;
	background: rgb(247, 247, 247);
	border: 1px solid rgba(147, 184, 189,0.8);
	-webkit-box-shadow: 0pt 2px 5px rgba(105, 108, 109,  0.7),	0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset;
	   -moz-box-shadow: 0pt 2px 5px rgba(105, 108, 109,  0.7),	0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset;
	        box-shadow: 0pt 2px 5px rgba(105, 108, 109,  0.7),	0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset;
	-webkit-box-shadow: 5px;
	-moz-border-radius: 5px;
		 border-radius: 5px;

	}
.error{
	color:red;
	font-size:30px;
}
.abc{
float:left;
}
</style>
</head>
<body>
	<c:set var="funcName" value="LOG" scope="session" />
	<c:set var="msg" value="登入" />
	<c:if test="${ ! empty sessionScope.timeOut }">
		<c:set var="msg"
			value="<font color='red'>${sessionScope.timeOut}</font>" />
	</c:if>
        <div class="container">
           
            <header>
                <h1>IMovie會員登入系統</h1>
				
            </header>
            <section>				
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
<!--                         <div id="login" class="animate form"> -->
<%-- 							<form:form method="POST" modelAttribute="loginBean"> --%>
<!--                                 <h1>登入</h1>  -->
<!--                                 <p>  -->
<!--                                     <label for="username" class="uname" > 帳號 </label> -->
<%--                                     <form:input path="userId" id="username" name="username" required="required" type="text" placeholder="請輸入您的登入帳號"/> --%>
<!--                                 </p> -->
<!--                                 <p>  -->
<!--                                     <label for="password" class="youpasswd"> 密碼 </label> -->
<%--                                     <form:input  path="password" id="password" name="password" required="required" type="password" placeholder="請輸入您的登入密碼" />  --%>
<!--                                 </p> -->
<!--                                 <p class="keeplogin">  -->
<%-- 									<form:checkbox path="rememberMe"  name="loginkeeping" id="loginkeeping" value="loginkeeping" />  --%>
<!-- 									<label for="loginkeeping">記住密碼</label> -->
<!-- 								</p> -->
<!--                                 <p class="login button">  -->
<%--                                 <form:errors path="invalidCredentials" class="error" /> --%>
<!--                                		<input type="submit" data-dismiss="modal" value="login" > -->
<!--                                    <a href="http://cookingfoodsworld.blogspot.in/" target="_blank" ></a> -->
<!-- 								</p> -->

<!--                                 <p class="change_link"> -->
<!-- 									還不是會員? -->
<!-- 									<a href="#toregister" class="to_register">加入我們</a> -->
<!-- 								</p> -->
<%--                             </form:form> --%>
<!--                         </div> -->
<!--                         <div id="register" class="animate form"> -->

                        <div  class="animate form">
						<form:form method="POST" modelAttribute="memberBean"
  							enctype='multipart/form-data'>							  
							<h1> 註冊 </h1> 
                               		 <p> 
								<label for="memberId" class="cols-sm-2 control-label">帳號<form:errors path="memberId" class='error'/></label>
										<form:input path='memberId' placeholder="請輸入您的帳號" />		 
											</p>
                                <p> 
                                    <label for="usernamesignup" class="uname" >姓名<form:errors path="name" class='error'/></label>
                                    <form:input path="name" id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="輸入您的姓名" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail"  >Email<form:errors path="email" class='error'/></label>
                                    <form:input path='email' id="emailsignup" name="emailsignup" required="required" type="email" placeholder="輸入您的Email"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="" >密碼<form:errors path="password" class='error'/></label>
                                    <form:input path='password' id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="輸入您的密碼"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" >再次確認您的密碼<form:errors path="password1" class='error'/></label>
                                    <form:input path='password1' id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="再次輸入您的密碼"/>
                                </p>
                                <p> 
                                    <label for="address" class="youaddr" >地址<form:errors path="address" class='error'/> </label>
                                    <form:input path='address' id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="text" placeholder="address"/>
                                </p>
                                <p> 
                                    <label for="tel" class="youpasswd" >電話<form:errors path="tel" class='error'/></label>
                                    <form:input path='tel' id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="text" placeholder="輸入您的電話"/>
                                </p>
                                <p>
                                    <label for="file" class="youfile" >照片<form:errors path="memberMultipartFile" class='error'/></label>
                                	<form:input path="memberMultipartFile" type='file' />
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="送出"/> 
								</p>
<!-- 								<p class="change_linkb">   -->
<!--                                 	<a href='#' class='abc'>1111</a> -->
<!--                                 	</p> -->
                                <p class="change_link">  
                                	<a href=<c:url value='/' /> class='abc'>回首頁</a>
									已有帳號 ?
									<a href="<c:url value='/_02_login/login' />" class="to_register"> 回到登入畫面 </a>
								</p>
                            </form:form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
</body>
</html>
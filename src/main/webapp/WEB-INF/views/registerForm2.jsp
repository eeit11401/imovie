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
<title>123456</title>
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
body{
	background: black;
background-attachment:fixed;
background-size:cover;
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

                        <div  class="animate form">
						<form:form method="POST" modelAttribute="memberBean" >							  
							<h1> 個人資料 </h1> 
                                <p> 
								<label for="memberId" class="cols-sm-2 control-label">帳號</label>
										<input type='text' value='${memberBean.memberId}' disabled="disabled">	 
											</p>
								<p> 
                                    <label for="passwordsignup" class="" >密碼</label>
										<input type='password' value='${memberBean.password}' disabled="disabled">	 
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" >姓名</label>
                                    <form:input path="name" id="usernamesignup" name="usernamesignup" required="required" type="text" value='${memberBean.name}' />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail"  >Email</label>
                                    <form:input path='email' id="emailsignup" name="emailsignup" required="required" type="email" value='${memberBean.email}'/> 
                                </p>
<!--                                 <p>  -->
<!--                                     <label for="passwordsignup" class="" >密碼</label> -->
<%--                                     <form:input path='password' id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="輸入您的密碼"/> --%>
<!--                                 </p> -->
<!--                                 <p>  -->
<!--                                     <label for="passwordsignup_confirm" class="youpasswd" >再次確認您的密碼</label> -->
<%--                                     <form:input path='password1' id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="再次輸入您的密碼"/> --%>
<!--                                 </p> -->
                                <p> 
                                    <label for="address" class="youaddr" >地址 </label>
                                    <form:input path='address' id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="text" value='${LoginOK.address}'/>
                                </p>
                                <p> 
                                    <label for="tel" class="youpasswd" >電話</label>
                                    <form:input path='tel' id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="text" value='${LoginOK.tel}'/>
                                </p>
                                
                                <p class="signin button"> 
									<input type="submit" value="修改"/> 
								</p>

                            </form:form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
</body>
</html>
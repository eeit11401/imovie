<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>帳號清單</title>
</head>
<body class="bg-theme bg-theme1">
		<c:set var="funcName" value="MemberList" scope="session"/>
		<div id="wrapper">
			<jsp:include page="../Manager/Manager.jsp" />
			<div class="content-wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12 col-lg-12">
							<div class="card">
								<div class="card-body" align="center">
								<h1 style="display:inline">會員清單</h1>
								<div class="table-responsive">
									<table id="MemberTable" class="table align-items-center" >
										<tr>
											<th>會員圖片</th>
											<th>會員帳號</th>
											<th>會員名稱</th>
											<th>會員性別</th>
											<th>會員年齡</th>
											<th>會員Email</th>
											<th>聯絡電話</th>
											<th>註冊時間</th>
										</tr>
										<c:forEach var="member" items="${member}">
										<tr>
											<td>
											<img height='100' width='80' src='${pageContext.request.contextPath}/_00_init/getMemberImage?id=${member.value.memberId}'>
											</td>
											<td>${member.value.memberId}</td>
											<td>${member.value.name}</td>
											<td>${member.value.gender}</td>
											<td>${member.value.birth}</td>
											<td>${member.value.email}</td>
											<td>${member.value.tel}</td>
											<td>${member.value.registerTime}</td>
										</tr>
										</c:forEach>
									</table>
			
			</div></div></div></div></div></div></div>
		</div>
</body>
</html>
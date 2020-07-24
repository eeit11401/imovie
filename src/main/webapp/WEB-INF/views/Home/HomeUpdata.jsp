<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
h1 {
	text-align: center;
	font-size: 60px;
}

h2 {
	text-align: center;
	color: blue font-size: 60px;
}
/* #c3 { */
/* 	padding-top: 4%; */
/* 	padding-left: 16.5%; */
/* } */
</style>

</head>
<script type="text/javascript">
/* alert(${BookDeleteMsg});
 */function HomeDelete(Name,Id) {
	if (confirm("確定刪除此項圖片資料(電影:"+Name+")?") ) {
		document.forms[0].action="HomeDelete?HomeId="+Id+"";
		document.forms[0].method="POST";
		document.forms[0].submit(); 
	} else {
	}
}
function HomeUpdate(homeId,homeImg,homeName) {
	
//    $("#updata").hide();
   $("input[name='homeName']").val(homeName);
   $("#homeImgUp").attr("src", ''+homeImg+'');
//  	$("input[name='homeName']").val(homeName);
   $("input[name='homeId']").val(homeId);
   $("#updata").show();
}
function UpdataCancel() {
	$("#updata").hide();
}

</script>

<body class="bg-theme bg-theme1">
	<c:set var="funcName" value="Home" scope="session" />
	<div id="wrapper">
		<jsp:include page="../Manager/Manager.jsp" />
		<div class="clearfix"></div>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div id='c3' class="clearfix">
					<div class="row">
						<div class="col-12 col-lg-12">
							<div class="card">
								<div class="card-header">
									<h1>前端首頁修改</h1>
									<input type="button" value="新增" data-toggle="modal"
										data-target="#HomeModal" onclick="HomeUpdate">
									<form id="form1" name="form1" method="post" action="">
										<div class="table-responsive">
											<table
												class="table align-items-center table-flush table-borderless">
												<thead>
													<tr>
														<th>圖片</th>
														<th>影片名稱</th>
														<th>修改/刪除</th>
													</tr>
												</thead>
												<c:forEach var="home" items="${homeMap}">
													<tr>
														<td><img height='100' width='80'
															src='<c:url value="/getHomeImg/${home.value.homeId}" />'>
														</td>
														<td>${home.value.homeName}</td>
														<td><input name="homeId" type="hidden" id="homeId"
															value="${home.value.homeId}" /> <input type="button"
															value="修改" data-toggle="modal" data-target="#HomeModalUp"
															id="updata${home.value.homeId}"
															onclick="HomeUpdate('${home.value.homeId}','<c:url value="/getHomeImg/${home.value.homeId}" />','${home.value.homeName}')">
															<input type="button" value="刪除"
															id="delet${home.value.homeId}"
															onclick="HomeDelete('${home.value.homeName}',${home.value.homeId})">
														</td>
													</tr>
												</c:forEach>
											</table>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="overlay toggle-menu"></div>
			</div>
		</div>


		<form:form method='POST' modelAttribute="homeBean"
			enctype='multipart/form-data'>
			<div class="modal" id="HomeModalUp">
				<div class="modal-dialog">
					<div class="modal-content"
						style="background-image: url(assets/images/bg-themes/1.png);">
						<!-- Modal (開啟) -->
						<table id="updata" style="display: none">
							<tr>
								<td>圖片名稱：</td>
								<td><form:input id="homeName" path="homeName"
										name="homeName" type='text' /></td>
							</tr>
							<tr>
								<td>選擇圖片：</td>
								<td><img id="homeImgUp" height='100' width='80' src="">
									<form:input id="productImage" path="productImage" type='file' /></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><form:input type="hidden"
										id="homeId" path="homeId" name="homeId" /> <input
									type="submit" name="intor" value="修改"> <input
									type="button" onclick="UpdataCancel()" value="取消"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</form:form>


		<form:form method='POST' modelAttribute="homeBean"
			enctype='multipart/form-data'>
			<div class="modal" id="HomeModal">
				<div class="modal-dialog">
					<div class="modal-content"
						style="background-image: url(assets/images/bg-themes/1.png);">
						<!-- Modal (開啟) -->
						<h2>新增首頁圖片</h2>
						<table
							class="table align-items-center table-flush table-borderless">
							<tr>
								<td>圖片名稱：</td>
								<td><form:input path="homeName" type='text' /></td>
							</tr>
							<tr>
								<td>選擇圖片：</td>
								<td><img id="homeImgUp" height='100' width='80' src="">
									<form:input id="productImage" path="productImage" type='file' /></td>
							</tr>
							<tr>
								<td align="center"><input type="submit" name="intor"
									value="新增 	"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</form:form>
	</div>
</body>

</html>
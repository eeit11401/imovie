<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
   //$("#updata").hide();
   $("input[name='homeName']").val(homeName);
   $("#homeImgUp").attr("src", ''+homeImg+'');
  /*  $("input[name='roomName']").val(roomName); */
   $("input[name='homeId']").val(homeId);
   $("#updata").show();
}
function UpdataCancel() {
	$("#updata").hide();
}
</script>
<body>
	<div align="center">
		<h1>首頁修改</h1>
		<form id="form1" name="form1" method="post" action="">
		<table>
			<tr>
				<th>HomeID</th>
				<th>圖片</th>
				<th>影片名稱</th>
				<th>修改/刪除</th>
				<th><input type="button" value="新增" onclick="javascript:location.href='HomeIn'"></th>
				<th><input type="button" value="返回測試選項" onclick="javascript:location.href='/DanielTest'"></th>
			</tr>
			<c:forEach var="home"  items="${homeMap}">
				<tr>
					<td>${home.value.homeId}</td>
					<td>
						<img height='100' width='80' src='<c:url value="/getHomeImg/${home.value.homeId}" />'>
					</td>
					<td>${home.value.homeName}</td>
					<td>
						<input name="homeId" type="hidden" id="homeId" value="${home.value.homeId}" />
						<input type="button" value="修改" id="updata${home.value.homeId}" onclick="HomeUpdate('${home.value.homeId}','<c:url value="/getHomeImg/${home.value.homeId}" />','${home.value.homeName}')">
						<input type="button" value="刪除" id="delet${home.value.homeId}" onclick="HomeDelete('${home.value.homeName}',${home.value.homeId})">
					</td>
				</tr>
			</c:forEach>
		</table>
		</form>
		<form:form method='POST' modelAttribute="homeBean" enctype='multipart/form-data'>
		<table id="updata" style="display:none">
			<tr>
				<td>圖片名稱：</td>
				<td>
					<form:input id="homeName" path="homeName" name="homeName" type='text' />
				</td>
			</tr>
			<tr>
				<td>選擇圖片：</td>
				<td>
					<img id="homeImgUp" height='100' width='80' src="">
					<form:input id="productImage" path="productImage" type='file' />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<form:input type="hidden" id="homeId" path="homeId" name="homeId" />
					<input type="submit" name="intor" value="修改">
					<input type="button" onclick="UpdataCancel()" value="取消">
				</td>
			</tr>
		</table>
		</form:form>
	</div>
</body>
</html>
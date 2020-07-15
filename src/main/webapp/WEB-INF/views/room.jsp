<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v4.0.1">
<title></title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/album/">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/js/bootstrap.bundle.js'
	type="text/js" />
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/bootstrap.css'
	type="text/css" />
<title>Room</title>
<style>

</style>
</head>
<body>
	<c:set var="funcName" value="Room" scope="session" />	
		<jsp:include page="Navigation.jsp" />
	<jsp:include page="RoomClass.jsp" />

	<div class='c1'>
		<main role="main">
			<div class="container">
				<div class="row" id='room'></div>
			</div>
		</main>
	</div>
	<script>
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "<c:url value='/allRooms ' />", true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var content = "";
				var rooms = JSON.parse(xhr.responseText);
				console.log("rooms:" + rooms);
				for (var i = 0; i < rooms.length; i++) {
					content += "<div class='col-4 shadow-sm'id='hot' style='border: 1px solid; padding-top: 10px;'>"
							+ "<div>"
							+ "<img width='100%' height='100%' "
							+ " src='"
							+ rooms[i].imageData
							+ "'>"
							+ "</div>"
							+ "<p class='card-text'>包廂類型:"
							+ rooms[i].bean.roomName
							+ "</p>"
							+ "<p class='card-text'>人數:"
							+ rooms[i].bean.roomSize
							+ "</p>"
							+ "<div class='d-flex justify-content-between align-items-center'><small class='text-muted'>價錢:"
							+ rooms[i].bean.roomPrice
							+ "元</small></div>"
							+ "</div>"
					content += "</div>";
				}
				var divs = document.getElementById("room");
				divs.innerHTML = content;
			}
		}
	</script>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/jquery.slim.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.bundle.js"></script>
</body>

</html>
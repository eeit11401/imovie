<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<style>
.c2 {
	padding-top: 10%;
}

.roomImg {
	height: 200px;
	width: 200px;
	
}
</style>
</head>
<body>
	
	<div class='c2'>
	包廂類型:<select  id='publish' onchange="Rooms()">
		<option value='全部'>全部</option>
		<c:forEach var='category' items='${categoryList}'>
			<option value='${category}'>${category}</option>
		</c:forEach>
	</select>
	</div>
	
	<script>
		function Rooms() {
			var roomTypeStr = document.getElementById('publish').value;
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "<c:url value='/allRoom?roomTypeStr=" + roomTypeStr
					+ "'/>", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var rooms = JSON.parse(xhr.responseText);
					var content = "";
					for (var i = 0; i < rooms.length; i++) {
						content += "<div class='col-4 shadow-sm'id='hot' style='border: 1px solid;padding-top: 10px;margin: 10px'>"
								+ "<div class='roomImg'>"
								+ "<img width='100%' height='100%' "
								+ ' src="' + "<c:url value='/getPicture2/"+rooms[i].roomId+"'/>" +'"/>'
								+ "</div>"
								+"<p class='card-text'>包廂名稱 : "
								+ rooms[i].roomName
								+ "</p>"
								+ "<p class='card-text'>包廂類型 : "
								+ rooms[i].roomPopulation
								+ "</p>"
								+ "<p class='card-text'>人數 : "
								+ rooms[i].roomSize
								+ "</p>"
								+ "<div class='d-flex justify-content-between align-items-center'><small class='text-muted'>價錢 : "
								+ rooms[i].roomPrice
								+ "元</small></div>"
								+ "</div>"
						content += "</div>";
					}
					var div = document.getElementById("room");
					div.innerHTML = content;
				}
			}
		}
	</script>




</body>
</html>
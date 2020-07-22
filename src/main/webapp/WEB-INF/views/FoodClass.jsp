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
* {
	padding: 0;
	margin: 0;
}

.c2 {
	padding-top: 10%;
}
</style>
</head>
<body>
	<div class='c2'>
		餐點類型: <select id='publish' onchange="Foods()">
			<option value='全部'>全部</option>
			<c:forEach var='category' items='${categoryList}'>
				<option value='${category.fGenreName}'>${category.fGenreName}</option>
			</c:forEach>
		</select>
	</div>

	<script>
		function Foods() {
			var foodTypeStr = document.getElementById('publish').value;
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "<c:url value='/allFood?foodTypeStr=" + foodTypeStr
					+ "'/>", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var foods = JSON.parse(xhr.responseText);
					var content = "";
					for (var i = 0; i < foods.length; i++) {
						content += "<div class='col-4 shadow-sm'id='hot' style='border: 1px solid;padding-top: 10px;margin: 10px'>"
								+ "<div>"
								+ "<img width='100%' height='100%' "
								+ ' src="' + "<c:url value='/getPicture/"+foods[i].foodId+"'/>" +'"/>'
								+ "</div>"
								+ "<p class='card-text'>餐點名稱 : "
								+ foods[i].foodName
								+ "</p>"
								+ "<div class='d-flex justify-content-between align-items-center'><small class='text-muted'>價錢 : "
								+ foods[i].foodPrice
								+ "元</small></div>"
								+ "</div>"
						content += "</div>";
					}
					var div = document.getElementById("food");
					div.innerHTML = content;
				}
			}
		}
	</script>




</body>
</html>
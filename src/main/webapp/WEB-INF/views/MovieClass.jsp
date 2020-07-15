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
		電影類型: <select id='publish' onchange="Movies()">
			<c:forEach var='category' items='${categoryList}'>
				<option value='${category.movieTypeId}'>${category.movieGenre1}</option>
			</c:forEach>
		</select>
	</div>

	<script>
		function Movies() {
			var movieTypeId = document.getElementById('publish').value;
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "<c:url value='/allMovie?movieTypeId="
					+ movieTypeId + "'/>", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var movies = JSON.parse(xhr.responseText);
					console.log(movies);
					var content = "";
					for (var i = 0; i < movies.length; i++) {
						console.log(movies[i]);
						content += "<div class='col-4 shadow-sm'id='hot' style='border: 1px solid; padding-top: 10px;'>"
								+ "<div>"
								+ "<img width='100%' height='100%' "
								+ " src='"
								+ movies[i].movieFileName
								+ "'>"
								+ "</div>"
								+ "<p class='card-text'>電影名稱:"
								+ movies[i].movieName
								+ "</p>"
								+ "<p class='card-text'>電影英文名稱:"
								+ movies[i].movieEName
								+ "</p>"
								+ "<p class='card-text'>級數:"
								+ movies[i].movieRated
								+ "</p>"
								+ "<p class='card-text'>介紹:"
								+ movies[i].movieNote
								+ "</p>"
								+ "<div class='d-flex justify-content-between align-items-center'><small class='text-muted'>片長:"
								+ movies[i].movieLength
								+ "</small></div>"
								+ "</div>"
						content += "</div>";
					}
					var div = document.getElementById("movie");
					div.innerHTML = content;
				}
			}
		}
	</script>
</body>
</html>
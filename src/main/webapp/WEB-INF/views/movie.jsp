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
<link rel='stylesheet' href='/js/bootstrap.bundle.js' type="text/js" />
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/bootstrap.css'
	type="text/css" />
<title>Movie</title>

<style>
</style>
</head>
<body>
	<c:set var="funcName" value="Movie" scope="session" />	
		<jsp:include page="Navigation.jsp" />
		<jsp:include page="MovieClass.jsp" />
	<div class='c1'>
	<main role="main">
		<div class="container">
			<div class="row" id='movie'></div>
		</div>
	</main>
	</div>
	<script>
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "<c:url value='/allMovies' />", true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var content = "";
				var movies = JSON.parse(xhr.responseText);
				for (var i = 0; i < movies.length; i++) {
					content += "<div class='col-3 shadow-sm'id='hot' style='border: 1px solid; padding-top: 10px;'>"
							+ "<div>"
							+ "<img width='100%' height='100%' "
							+ " src='"
							+ movies[i].imageData
							+ "'>"
							+ "</div>"
							+ "<p class='card-text'>電影名稱:"
							+ movies[i].bean.movieName
							+ "</p>"
							+ "<p class='card-text'>電影英文名稱:"
							+ movies[i].bean.movieEName
							+ "</p>"
							+ "<p class='card-text'>級數:"
							+ movies[i].bean.movieRated
							+ "</p>"
							+ "<p class='card-text'>介紹:"
							+ movies[i].bean.movieNote
							+ "</p>"
							+ "<div class='d-flex justify-content-between align-items-center'><small class='text-muted'>片長:"
							+ movies[i].bean.movieLength
							+ "</small></div>"
							+ "</div>"
					content += "</div>";
				}
				var div = document.getElementById("movie");
				div.innerHTML = content;
			}

		}
	</script>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha256-4+XzXVhsDmqanXGHaHvgh1gMQKX40OUvDEBTu8JcmNs="
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../js/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.bundle.js"></script>
</body>

</html>
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
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/album/">
<link rel='stylesheet' href='js/bootstrap.bundle.js' type="text/js" />
<link rel='stylesheet' href='css/bootstrap.css' type="text/css" />
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@700&display=swap" rel="stylesheet">
<title>menu</title>
<style>
* {
	padding: 0px;
	margin: 0px;
}

.foodN {
	color: black;
	font-family: 'Noto Sans TC', sans-serif;
	font-weight: 300;
	font-size:20px;
}

div {
	color: white;
}

.setFlex span{
	display: inline-block;
	justify-content: space-around;
	text-align: right;
}
.tran{
	transition-duration: 2s;
}



</style>

</head>

<body>
	<c:set var="funcName" value="menu" scope="session" />
	<jsp:include page="Navigation.jsp" />
	<jsp:include page="FoodClass.jsp" />
	<div class='c1'>
		<main role="main">
			<div class="container">
				<div class="row tran" id='food'></div>
			</div>
		</main>
	</div>
	<script>
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "<c:url value='/allFoods' />", true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var content = "";
				var foods = JSON.parse(xhr.responseText);
				for (var i = 0; i < foods.length; i++) {
					content += "<div class='col-4 shadow-sm'id='hot' style='border-radius: 10px; margin:20px;padding-top: 20px;background:#E2F2F8'>"
							+ "<div>"
							+ "<img width='80%' height='80%' "
							+ " src='"
							+ foods[i].imageData
							+ "'>"
							+ "</div><div style='display:flex' class='setFlex'>"
							+ "<div  style='margin-top:5px' class='card-text foodN'> "
							+ foods[i].bean.foodName
							+ "</div>"
							+ "<div style='margin-left:10px;text-align: right;float: right;font-weight: 600;font-size: 25px;color:#ED3131'>NT. "
							+ foods[i].bean.foodPrice
							+ "</div>"
							+ "</div>"
					content += "</div>";
				}
				var divs = document.getElementById("food");
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
						.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')
	
	</script>
</body>

</html>
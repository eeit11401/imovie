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
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<script type="text/javascript">
window.onload=function (){
	$('#productImage').change(function() {//圖片預覽
		  var file = $('#productImage')[0].files[0];
		  var reader = new FileReader;
		  reader.onload = function(e) {
		    $('#movieImgUp').attr('src', e.target.result);
		    $("#movieImgUp").show();
		  };
		  reader.readAsDataURL(file);
		});
	}
	function addMovieIn() {//開啟新增畫面
		$("input[name='movieName']").val("");
		$("input[name='movieLength']").val("");
		$("#movieNote").val("");
		$("input[type='checkbox']").prop("checked",false);
		$("#movieImgUp").attr("src", "");
		$("#movieImgUp").hide();
		$("input[name='movieId']").val("");
		$("#productImage").val("");
		$("input[type='radio']").prop("checked",false);
		$("#modal_title").html("新增電影");
		$("#updata").show();
		$("#intorAdd").show();
		$("#intor").hide();
	}
	function RoomDelete(Name,Id) {//刪除舊版
		if (confirm("確定刪除此項電影資料(電影:"+Name+")?") ) {
			document.forms[0].action="MovieDelete/"+Id;
			document.forms[0].method="POST";
			document.forms[0].submit(); 
		} else {
			document.forms[0].action="";
			document.forms[0].method="";
		}
	}
	function MovieDelete(Name,Id) {//刪除AJAX
		if (confirm("確定刪除此項電影資料(電影:"+Name+")?") ) {
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "<c:url value='MovieDelete/"+Id+"' />", true);
			xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhr.send();
			$("#tr"+Id).remove();
		} else {
			
		}
	    
	}
	function AddSubmit() {//新增AJAX
		$("#updata").hide();
		var xhr = new XMLHttpRequest();
		var form = document.getElementById('updataform');  
		var formData = new FormData(form);
		var table = document.getElementById("movieTable");
		var row = table.insertRow(1);
		var cell0 = row.insertCell(0);
		var cell1 = row.insertCell(1);
		var cell2 = row.insertCell(2);
		var cell3 = row.insertCell(3);
		var cell4 = row.insertCell(4);
		var cell5 = row.insertCell(5);
		var cell6 = row.insertCell(6);
		var cell7 = row.insertCell(7);
		var cell8 = row.insertCell(8);
		var btn = document.createElement("BUTTON");
		var del = document.createElement("BUTTON");
		
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var publishers = JSON.parse(xhr.responseText);
				const idMap = Object.keys(publishers);
// 				alert(idMap.slice(-1));"<td id='id"++"'>"++"</td>"
				row.setAttribute("id","tr"+publishers[idMap.slice(-1)].movieId)
				cell0.innerHTML=publishers[idMap.slice(-1)].movieId;
				cell1.innerHTML="<img height='100' width='80' src='<c:url value='/getMovieImg/"+publishers[idMap.slice(-1)].movieId+"' />'>"//publishers[idMap.slice(-1)].movieId;//要放圖片
				cell2.innerHTML=publishers[idMap.slice(-1)].movieName;
				cell3.innerHTML=publishers[idMap.slice(-1)].movieLength;
				cell4.innerHTML="<pre>"+publishers[idMap.slice(-1)].movieNote+"</pre>";
				cell5.innerHTML=publishers[idMap.slice(-1)].movieGenre1;
				cell7.innerHTML=publishers[idMap.slice(-1)].movieDateString;
				cell6.innerHTML=publishers[idMap.slice(-1)].movieRated;
				cell0.setAttribute("id", "id"+publishers[idMap.slice(-1)].movieId);
				cell1.setAttribute("id", "movieImgId"+publishers[idMap.slice(-1)].movieId);
				cell2.setAttribute("id", "movieNameId"+publishers[idMap.slice(-1)].movieId);
				cell3.setAttribute("id", "movieLengthId"+publishers[idMap.slice(-1)].movieId);
				cell4.setAttribute("id", "movieNoteId"+publishers[idMap.slice(-1)].movieId);
				cell5.setAttribute("id", "movieGenre1Id"+publishers[idMap.slice(-1)].movieId);
				cell6.setAttribute("id", "movieRatedId"+publishers[idMap.slice(-1)].movieId);
				cell7.setAttribute("id", "movieDateId"+publishers[idMap.slice(-1)].movieId);
				cell8.setAttribute("align", "center");
				btn.innerHTML = '<i class="material-icons" style="font-size:25px;color:blue;">edit</i>';
				del.innerHTML = '<i class="fa fa-trash" style="font-size:25px;color:red"></i>';
				$(btn).attr({
					"id":"updata"+publishers[idMap.slice(-1)].movieId,
					"type":"button",
					"class":"btn",
					"data-toggle":"modal",
					"data-target":"#myModal",
					"onclick":"MovieUpdateAjax('"+publishers[idMap.slice(-1)].movieId+"')"
				});
				$(del).attr({
					"id":"Delete",
					"class":"btn",
					"onclick":"RoomDelete('"+publishers[idMap.slice(-1)].movieName+"',"+publishers[idMap.slice(-1)].movieId+")"
					});
				cell8.appendChild(btn);
				cell8.appendChild(del);
			}
		}
		xhr.open("POST", "<c:url value='MovieAddSubmit' />", true);
		xhr.send(formData); 
	}
	function RoomUpdate(movieId,movieImg,movieName,movieLength,movieNote,movieGenre1) {//修改電影(舊版)		
	   //$("#updata").hide();
	   $("input[name='movieName']").val(movieName);
	   $("input[name='movieLength']").val(movieLength);
	   $("#movieNote").val(movieNote);
	   $("input[type='checkbox']").prop("checked",false); 
	   var arr = new Array();
	   arr = movieGenre1.split(",");
	   for (var i = 0; i < arr.length; i++) {
		   console.log(arr[i]);
		   $("input[type='checkbox'][value='"+arr[i]+"']").prop("checked",true);
		}
	   $("#movieImgUp").attr("src", ''+movieImg+'');
	   $("#movieImgUp").show();
	  /*  $("input[name='roomName']").val(roomName); */
	   $("input[name='movieId']").val(movieId);
	   $("#updata").show();
	}
	function MovieUpdateAjax(movieId) {//修改電影(AJAX)
		$("#modal_title").html("修改電影");
		$("#intorAdd").hide();
		$("#productImage").val("");
		$("input[type='radio']").prop("checked",false);
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var publishers = JSON.parse(xhr.responseText);
				for (var i = 0; i < publishers.length; i++) {
					console.log(publishers[0].movieName);
					$("input[name='movieName']").val(publishers[0].movieName);
				    $("input[name='movieLength']").val(publishers[0].movieLength);
				    $("#movieNote").val(publishers[0].movieNote);
				    $("input[type='checkbox']").prop("checked",false);
				    if (publishers[0].movieGenre1 != null) {
				    	var arr = new Array();
					    arr = publishers[0].movieGenre1.split(",");
					    for (var i = 0; i < arr.length; i++) {
						   $("input[type='checkbox'][value='"+arr[i]+"']").prop("checked",true);
						 }
					}
				    if (publishers[0].movieRated != null) {
				    	$("input[type='radio'][value='"+publishers[0].movieRated+"']").prop("checked",true);
					}
				    $("#movieImgUp").attr("src", '<c:url value="/getMovieImg/' + publishers[0].movieId + '" />');
				    $("input[name='movieId']").val(publishers[0].movieId);
				} 
			}
		}
		xhr.open("GET", "<c:url value='MovieUpdateAjax?MoviemId="+movieId+"' />", true);
		xhr.send();
	    $("#updata").show();
	    $("#movieImgUp").show();
		$("#intor").show();
	}
	function UpdataCancel() {
		$("#updata").hide();
	}
	
	function UpdataSubmit() {//更新AJAX
		$("#updata").hide();
		var xhr = new XMLHttpRequest();
		var xhrimg = new XMLHttpRequest();
		var form = document.getElementById('updataform');  
		var formData = new FormData(form);
		var table = document.getElementById("movieTable");
		var movieId = $("#movieId").val();
		//alert("jiji"+movieId);
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var publishers = JSON.parse(xhr.responseText);
				const idMap = Object.keys(publishers);//map抓取key
				xhrimg.open("GET", "<c:url value='getMovieImg/"+publishers[movieId].movieId+"' />", true);
				xhrimg.send();				
				$("#movieImgId"+movieId).html("<img height='100' width='80' src='<c:url value='/getMovieImg/"+publishers[movieId].movieId+"' />'>"); 				
				$("#movieNameId"+movieId).html(publishers[movieId].movieName);
				$("#movieLengthId"+movieId).html(publishers[movieId].movieLength);
				$("#movieNoteId"+movieId).html("<pre>"+publishers[movieId].movieNote+"</pre>");
				$("#movieGenre1Id"+movieId).html(publishers[movieId].movieGenre1);
				$("#movieDateId"+movieId).html(publishers[movieId].movieDateString);
				$("#movieRatedId"+movieId).html(publishers[movieId].movieRated);
			}
		}
		xhr.open("POST", "<c:url value='MovieUpdateSubmit' />", true);
	    /* xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");  */
		xhr.send(formData);
	}
</script>
<body class="bg-theme bg-theme1">
<c:set var="funcName" value="Movie" scope="session"/>
<div id="wrapper">
<jsp:include page="../Manager/Manager.jsp" />
<div class="content-wrapper">
    <div class="container-fluid">
	<div class="row">
	 <div class="col-12 col-lg-12">
	   <div class="card">
		<h1>前端電影維護</h1>
	    <div class="table-responsive">
		<div class="btn" data-toggle="modal" data-target="#myModal" id="Addmovie" onclick="addMovieIn()">
		   	<i class="material-icons" style="font-size:30px;color:blue;">add_box</i>
		</div>
		<input type="button" value="返回測試選項" onclick="javascript:location.href='/DanielTest'">
		<table id="movieTable" class="table align-items-center table-flush table-borderless">
		<thead class="thead-dark">
			<tr>
				<th>MovieID</th>
				<th>圖片</th>
				<th>電影名稱</th>
				<th>電影長度</th>
				<th>電影說明</th>
				<th>電影類型</th>
				<th>電影等級</th>
				<th>最後更新時間</th>
				<th>修改/刪除</th>
				
			</tr>
		</thead>
			<c:forEach var="movie"  items="${movieMap}">
				<tr id="tr${movie.value.movieId}">
					<td id="id${movie.value.movieId}">${movie.value.movieId}</td>
					<td id="movieImgId${movie.value.movieId}">
<!-- 						${pageContext.servletContext.contextPath}/_00_init/getRoomImage?id=${room.value.roomId} -->
						<img height='100' width='80' src='<c:url value="/getMovieImg/${movie.value.movieId}" />'>
					</td>
					<td id="movieNameId${movie.value.movieId}">${movie.value.movieName}</td>
					<td id="movieLengthId${movie.value.movieId}">${movie.value.movieLength}</td>
					<td style='word-wrap: break-word' id="movieNoteId${movie.value.movieId}">
					
							${movie.value.movieNote}
					</td>
					<td id="movieGenre1Id${movie.value.movieId}">${movie.value.movieGenre1}</td>
					<td id="movieRatedId${movie.value.movieId}">${movie.value.movieRated}</td>
					<td id="movieDateId${movie.value.movieId}">${movie.value.movieDateString}</td>
					<td align="center">
						<input name="movieId" type="hidden" id="movieId" value="${movie.value.movieId}" />
						<button type="button" class="btn" data-toggle="modal" data-target="#myModal" id="updata${movie.value.movieId}" onclick="MovieUpdateAjax('${movie.value.movieId}')">
						   	<i class="material-icons" style="font-size:25px;color:blue;">edit</i>
						</button>
<%-- 						<input type="button" value="修改" class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="updata${movie.value.movieId}" onclick="RoomUpdateAjax('${movie.value.movieId}')"> --%>
<!-- 						<input type="button"  value="刪除"> -->
<%-- 						<button class="btn" id="delet${movie.value.movieId}" onclick="RoomDelete('${movie.value.movieName}',${movie.value.movieId})"><i class="fa fa-trash" style="font-size:25px;color:red"></i></button> --%>
						<button class="btn" id="delet${movie.value.movieId}" onclick="MovieDelete('${movie.value.movieName}',${movie.value.movieId})"><i class="fa fa-trash" style="font-size:25px;color:red"></i></button>
					</td>
				</tr>
			</c:forEach>
		</table>
<%-- 		</form> --%>
<!-- 		action="MovieUpdateSubmit" -->
		<div class="modal" id="myModal">
		    <div class="modal-dialog">
		      <div class="modal-content" style="background-image: url(assets/images/bg-themes/5.png); ">
		       <form:form id="updataform" method='POST' modelAttribute="movieBean" enctype='multipart/form-data'>
<%-- 		       <form:form id="updataform" modelAttribute="movieBean"> --%>
		        <!-- Modal Header (標頭)-->
		        <div class="modal-header">
		          <h1 class="modal-title" id="modal_title">修改電影</h1>
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		        </div>
		        <!-- Modal body (內容形式)-->
		        <div class="modal-body" align="left">
			          <div class="form-group">
			            <label for="recipient-name" class="col-form-label">電影名稱</label>
			            <form:input id="movieName" path="movieName" name="movieName" type='text' class="form-control"/>
			          </div>
			           <div class="form-group">
				           <label for="recipient-name" class="col-form-label">電影長度(分鐘)</label>
				           <form:input type="number" id="movieLength" path="movieLength" name="movieLength" class="form-control"/>		        
			           </div>
			           <div class="form-group">
				           <label for="message-text" class="col-form-label">電影說明</label>
				           <form:textarea id="movieNote" name="movieNote" path="movieNote" class="form-control"></form:textarea>
			           </div>
			           <div class="form-group">
				           <label for="recipient-name" class="col-form-label">電影類型</label><br>
<%-- 				           <form:checkboxes items="${GenreList}"  path="movieGenre1" /> --%>
				           <c:forEach var="GenreList" items="${GenreList}">
					           <div class="form-check-inline">
								  <label class="form-check-label">
										<form:checkbox path="movieGenre1" value="${GenreList}"/>${GenreList}
								  </label>
								</div>
				       		</c:forEach>
			           </div>
			           <div class="form-group">
				           <label for="recipient-name" class="col-form-label">電影級數</label><br>
				           <div class="form-check-inline">
							   <label class="form-check-label">
							   		<form:radiobutton class="form-check-input" path="movieRated" value="普遍級" />普遍級
							   </label>
						   </div>
				          <div class="form-check-inline">
							   <label class="form-check-label">
							   		<form:radiobutton class="form-check-input" path="movieRated" value="保護級" />保護級
							   </label>
						  </div>
				          <div class="form-check-inline">
							   <label class="form-check-label">
							   		<form:radiobutton class="form-check-input" path="movieRated" value="輔12級" />輔12級
							   </label>
						  </div>
				          <div class="form-check-inline">
							   <label class="form-check-label">
							   		<form:radiobutton class="form-check-input" path="movieRated" value="輔15級" />輔15級
							   </label>
						  </div>
				          <div class="form-check-inline">
							   <label class="form-check-label">
							   		<form:radiobutton class="form-check-input" path="movieRated" value="限制級" />限制級
							   </label>
						  </div>
			           </div>
			           <div class="form-group">
				            <label class="btn btn-info">
								<form:input id="productImage" path="productImage" type='file' style="display:none;" />
								<i class="fa fa-photo"></i> 上傳圖片
							</label>
							<img id="movieImgUp" height='100' width='80' src="">
			           </div>
		        </div>
		        <!-- Modal footer (結尾)-->
		        <div class="modal-footer">
		          	<form:input type="hidden" id="movieId" path="movieId" name="movieId" />
					<input type="button" id="intor" class="btn btn-primary" data-dismiss="modal" onclick="UpdataSubmit()" value="修改">
					<input type="button" id="intorAdd" class="btn btn-primary" data-dismiss="modal" onclick="AddSubmit()" value="新增">
					<input type="button" class="btn btn-danger" data-dismiss="modal" value="取消">					
		        </div>		        
			    </form:form>
		      </div>
		    </div>
		</div>
	</div></div></div></div></div></div></div>
<!-- 	<script src="assets/js/Movie.js"></script> -->
</body>
</html>
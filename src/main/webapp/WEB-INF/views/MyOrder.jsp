<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<style>
	*{
	font-family: 微軟正黑體;
	}
	#answer{
	align:center;
	margin-left:auto;
	margin-right:auto;
	margin-top:40px;
	margin-bottom:50px;
	text-align: left;
	font-family: 微軟正黑體;
	font-size: 25px;
	border: 3px solid rgb(252, 198, 141);
	border-radius: 15px;
 	width:55%; 

	}
	#title{
	font-size: 30px;
	text-align:right;
	background-color: rgb(252, 198, 141,0.8);
	text-align: center;
	border: 0px solid rgb(252, 198, 141);
	}
	.btn{
	float:right;
	margin-left:10px;
	 }
	
</style>
<head>
<meta charset="UTF-8">
<title>My Order</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<!-----------------------------回到頂端按鈕------------------------------------->		
<div style="position: fixed; top: 87%; right:-10%; z-index: 999;">
<a class="gototop close" href="#" title="回頂端" alt="回頂端" >
<img id="topimg" style="height:10%;width:10%;opacity:0.4" src="img\cart\totop.png">
</a></div>
<!-----------------------------回到頂端按鈕------------------------------------->	

<h3 style="font-family:微軟正黑體"><a href="<c:url value='/' />" >回上頁</a></h3>
	<table id="answer" class="table table-bordered">
		<tr id="title" >
			<td>訂單管理
			</td>
		</tr>
		<tr>
			<th>訂單資訊</th>
		</tr>
		<tr>
			<td>訂單編號：</td>
		</tr>
		<tr>
		    <td>訂單時間：</td>
		</tr>
		<tr>
			 <td>訂單狀態：<span style="color:green">訂單成立</span></td>
		</tr>
		
		<tr>	 
		     <th><br>商品清單</th>
		</tr>
		<tr>
		     <td>包廂：</td>
		</tr>
		<tr>
			 <td>電影： 電影分級： 電影長度：</td>
		</tr>
		<tr>
			 <td>預約日期：</td>
		</tr>
		<tr>
			 <td>預約時間：</td>
		</tr>	
		<tr>
			 <td>餐點：</td>
		</tr>
		<tr>
		    <td style="text-align:right">總金額：NT.2600 </td> 
		</tr>
		<tr>	
     		<th>備註</th>
		</tr>
		<tr>
			<td>付款資訊：</td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<tr>
		<td><span text-align:right;>
		<span><Input type='submit' class="btn btn-default btn-lg" onclick="self.location.href='mailto:admin@mobiled.tw'" value='聯絡我們'></span>	
		<span><Input type='submit' class="btn btn-danger btn-lg"  value='取消訂單'>	</span>
		</span></td>
		</tr>
	</table>

<script>
<!-----------------------------回到頂端按鈕------------------------->			
$(window).scroll(function(event){
  var scroll = $(window).scrollTop();
    if (scroll >= 100) {
       $(".gototop").removeClass("close");
    }else {
    	$(".gototop").addClass("close");
    }
});	
<!-----------------------------回到頂端按鈕------------------------->	
</script>
</body>
</html>
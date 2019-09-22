<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<style>
	*{
		margin : 0;
		padding: 0;
	}
	
	a{
		text-decoration: none;
		color: white;
	}
	header{
		height:110px;
	}
	#header{
		width: 100%;
		background-color: rgba(0,0,0,0.8);
		height: 55px;
		padding: 25px 0;
		position: fixed;
		
	}
	ul{
		list-style: none;
	}
	#container{
		border:1px solid white;
		width:1020px;
		height:30px;
		margin-left:500px;
		margin-top: 30px;
	}
	
	#menu{
		width:1000px;
		height:30px;
		margin:0 auto;
	}
	#menu .mainMenu{
		float: left;
		width:250px;
		height:30px;
		line-height:30px;
		text-align:center;
		border:1px solid white;
		position: relative;
	}
	.submenu{
		clear:both;
		width:250px;
		border:1px solid white;
		background-color: rgba(0,0,0,0.8);
		position: absolute;
		top:30px;
		text-align:center;
		display: none;
		
	}
	.submenu li{
		height:30px;
		line-height:30px;
	}
</style>

<script>
$(function() {
	$(".mainMenu").hover(function() {
		$(this).find(".submenu").stop().slideDown(100);
		$(this).find(".mainA").css("color", "yellow");
		$(this).find(".mainA").css("font-weight", "bold");
		$(this).find(".mainA").css("font-size", "20px");
	}, function() {
		$(this).find(".submenu").stop().slideUp(100)
		$(this).find(".mainA").css("color", "white");
		$(this).find(".mainA").css("font-weight", "");
		$(this).find(".mainA").css("font-size", "16px");
	})
	
	$(".subA").hover(function() {
		$(this).css("color", "yellow");
		$(this).css("font-weight", "bold");
		$(this).css("font-size", "20px");
	}, function() {
		$(this).css("color", "white");
		$(this).css("font-weight", "");
		$(this).css("font-size", "16px");
	})
})
</script>
</head>
<body>
	<header>
		<div id="header">
			<div id="container">
				<ul id="menu">
					<li class="mainMenu">
						<a href="#" class="mainA">영화관리</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/manager/insertMovie" class="subA">영화 등록</a></li>
								<li><a href="${pageContext.request.contextPath }/manager/insertRuntimeMovie" class="subA">상영영화 등록</a></li>
								<li><a href="${pageContext.request.contextPath }/manager/updateMovie" class="subA">영화정보 수정 </a></li>
								<li><a href="${pageContext.request.contextPath }/manager/updateRMovie" class="subA">상영영화정보 수정</a></li>
								<li><a href="${pageContext.request.contextPath }/manager/deleteMovie" class="subA">영화 마감</a></li>
							</ul>
					</li>
					
					<li class="mainMenu">
						<a href="#" class="mainA">영화관 관리</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/manager/makeTheater" class="subA">영화관 등록</a></li>
								<li><a href="${pageContext.request.contextPath }/manager/deleteTheater" class="subA">영화관 삭제</a></li>
								<li><a href="${pageContext.request.contextPath }/manager/updateTheater" class="subA">영화관 수정</a></li>
							</ul>
					</li>
				</ul>
			</div>
		</div>
	</header>
</body>
</html>
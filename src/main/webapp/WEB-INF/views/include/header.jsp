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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<style type="text/css">
*{
	margin:0; padding:0;
}
body{
	background: #fdfcf0;
}
ul{
	list-style: none;
}
a{
	text-decoration: none;
	color:black;
}
header{
	min-width:1900px;
}

/*-------------------------------------header----------------------------------------*/
div#top_image{
	background:#061242;
	height:80px;
	text-align: center;
	
}

div#top_img_container{
	width:980px;
	height:80px;
	margin:0 auto;
	position: relative;
}

div#top_image #top_x{
	
	width:15px;
	height:15px;
	
}
div#top_image #top_a_x{
	position: absolute;
	right:-10px;
	top:0;
	
}
/*------------------------------------nav1--------------------------------------------*/
#top_nav1{
	width:980px;
	margin:0 auto;
	overflow:hidden;
}
#top_nav1 #ul_left{
	width:352px;
}
#top_nav1 #ul_left li{
	float:left;
	border-left:1px solid #ccc;
}
#top_nav1 #ul_left li:last-child{
	border-right:1px solid #ccc;
}
#top_nav1 #ul_left li a{
	padding: 0 10px;
	line-height: 30px;
}
#top_nav1 #ul_left li a.app{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:74px;
	height:30px;
	padding: 0 10px;
	background-position: 10px -714px;
	overflow:hidden;
	display:block;
	
}
#top_nav1 #ul_left li a.app span{
	display: none;
}
#top_nav1 #ul_left li a.like{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:44px;
	height:30px;
	padding: 0 10px;
	background-position: -85px -714px;
	overflow:hidden;
	display:block;
	
}
#top_nav1 #ul_left li a.like span{
	display: none;
}
#top_nav1 #ul_left li a.insta{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:60px;
	height:30px;
	padding: 0 10px;
	background-position: -263px -714px;
	overflow:hidden;
	display:block;
	
}
#top_nav1 #ul_left li a.insta span{
	display: none;
}
#top_nav1 #ul_left li a.frugal{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:85px;
	height:30px;
	padding: 0 10px;
	background-position: -151px -714px;
	overflow:hidden;
	display:block;
	
}
#top_nav1 #ul_left li a.frugal span{
	display: none;
}

#top_nav1 #ul_right{
	width:520px;
	float:right;
}
#top_nav1 #ul_right li{
	float:left;
}
#top_nav1 #ul_right li a.login{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:29px;
	height:30px;
	padding: 0 10px;
	background-position: 10px 9px;
	overflow:hidden;
	display:block;
}
#top_nav1 #ul_right li a.login span{
	display: none;
}
#top_nav1 #ul_right li a.join{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:39px;
	height:30px;
	padding: 0 10px;
	background-position: -42px 9px;
	overflow:hidden;
	display:block;
}
#top_nav1 #ul_right li a.join span{
	display: none;
}
#top_nav1 #ul_right li a.mycgv{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:39px;
	height:30px;
	padding: 0 10px;
	background-position: -103px 9px;
	overflow:hidden;
	display:block;
}
#top_nav1 #ul_right li a.mycgv span{
	display: none;
}

#top_nav1 #ul_right li a.vip{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:62px;
	height:30px;
	padding: 0 10px;
	background-position: -170px 9px;
	overflow:hidden;
	display:block;
}
#top_nav1 #ul_right li a.vip span{
	display: none;	
}
#top_nav1 #ul_right li a.specialclub{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:53px;
	height:30px;
	padding: 0 10px;
	background-position: -254px 9px;
	overflow:hidden;
	display:block;
}
#top_nav1 #ul_right li a.specialclub span{
	display: none;	
}
#top_nav1 #ul_right li a.customer{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:38px;
	height:30px;
	padding: 0 10px;
	background-position: -328px 9px;
	overflow:hidden;
	display:block;
}
#top_nav1 #ul_right li a.customer span{
	display: none;	
}
#top_nav1 #ul_right li a.showtimes{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:106px;
	height:30px;
	padding: 0 10px;
	background-position: -388px 9px;
	overflow:hidden;
	display:block;
}
#top_nav1 #ul_right li a.showtimes span{
	display: none;	
}



/*------------------------------------nav2--------------------------------------------*/

#bg_header{
	clear:both;
	background:url("${pageContext.request.contextPath}/resources/images/bg_header1.png") top left;
	background-size:100% 100%;
	height:119px;
	/* overflow:hidden; 서브메뉴때문에 해놓음*/
}
nav#top_nav2{
	width:980px;
	height:119px;
	margin:0 auto;
	clear:both;
	position:relative;
	
}
nav#top_nav2 h2{
	position: absolute;
	top:30px;
	left:360px;
	margin-bottom:10px;
	clear:both;
	height:32px;
}
nav#top_nav2 img#cgv{
	position: absolute;
	left:2%;
	top:25%;
}
nav#top_nav2 > ul{
	width:376px;
	height:35px;
	margin:0 auto;
	clear:both;
	position:absolute;
	top:70px;
	left:300px;
}
nav#top_nav2 .input_button{
	position:absolute;
	top:50%;
	right:17%;
}
nav#top_nav2 .input_button input{
	height:22px;
}
nav#top_nav2 .input_button button{
	height:27px;
	background:#e71a0f;
	color:white;
}
nav#top_nav2 > ul > li{
	float:left;
	text-align: center;
	margin-right:20px;
	position:relative;
	height:20px;
	line-height: 20px;
}

div.div_submenu{
		width: 150px;
		background: #353432;
		color:white;
		font-size:14px;
		padding:3px;
		z-index:5;
		position:absolute;
		top:18px;
	}
div.div_submenu #height150{
		height: 150px;
		border:2px solid #ccc;
		padding: 5px 5px;
	}
div.div_submenu #height150 li:last-child{
		border-top:2px solid #ccc;
		margin-top:10px;
		padding-top:10px;
	}
div.div_submenu #height50{
		height: 50px;
		border:2px solid #ccc;
		padding: 5px 5px 10px 5px;
	}
div.div_submenu #height100{
		height: 100px;
		border:2px solid #ccc;
		padding: 5px 5px;
	}
div.div_submenu #height100 li:last-child{
		border-top:2px solid #ccc;
		margin-top:10px;
		padding-top:10px;
}
div.div_submenu #height80{
		height: 80px;
		border:2px solid #ccc;
		padding: 5px 5px;
	}
div.div_submenu .submenu li{
		margin:5px;
		text-align: left;
	}
div.div_submenu .submenu li a{
	color:white;
	font-weight: bold;
}
div.div_submenu{
	display:none;
}
#top_nav2 > ul > li:hover > a ~ .div_submenu{
	display:block;
}


#top_nav2 ul li a.movie{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:60px;
	height:17px;
	background-position: 13px -28px;
	overflow:hidden;
	display:block;
}
#top_nav2 ul li a.movie span{
	display:none;
}
#top_nav2 ul li a.reservation{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:60px;
	height:17px;
	background-position: -77px -28px;
	overflow:hidden;
	display:block;
}
#top_nav2 ul li a.reservation span{
	display:none;
}
#top_nav2 ul li a.theater{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:60px;
	height:17px;
	background-position: -166px -28px;
	overflow:hidden;
	display:block;
}
#top_nav2 ul li a.theater span{
	display:none;
}
#top_nav2 ul li a.event{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:90px;
	height:17px;
	background-position: -517px -28px;
	overflow:hidden;
	display:block;
}
#top_nav2 ul li a.event span{
	display:none;
}
#top_nav2 .bee{
	position: absolute;
	top:10%; right:16%;
}
#top_nav2 .person{
	position: absolute;
	top:12%; right:6%;
}

/*--------------------------footer---------------------------*/
footer{
	min-width:1900px;
}
#footer_red{
	background: #9f0505;
	height:270px;
	position: relative;
	margin-top:30px;
}
#footer_img{
	width:980px;
	margin: 0 auto;
	top:-30px;
	left:400px;
}
footer nav{
	width:980px;
	margin:0 auto;
	height: 70px;
	overflow:hidden;
}
footer nav li{
	float:left;
	padding:10px 0;
	height:64px;
	margin-left:22px;
}
footer nav li:first-child{
	margin-left:0;
}
footer nav li a.dx{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:49px;
	height:44px;
	background-position: 0 -768px;
	overflow:hidden;
	display:block;
}
footer nav li a.dx span{
	display:none;
}
footer nav li a.imax{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:59px;
	height:44px;
	background-position: -74px -768px;
	overflow:hidden;
	display:block;
}
footer nav li a.imax span{
	display:none;
}
footer nav li a.screenx{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:88px;
	height:44px;
	background-position: -159px -768px;
	overflow:hidden;
	display:block;
}
footer nav li a.screenx span{
	display:none;
}
footer nav li a.spherex{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:76px;
	height:44px;
	background-position: -273px -768px;
	overflow:hidden;
	display:block;
}
footer nav li a.spherex span{
	display:none;
}
footer nav li a.tempur{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:55px;
	height:44px;
	background-position: -480px -768px;
	overflow:hidden;
	display:block;
}
footer nav li a.tempur span{
	display:none;
}

footer nav li a.gold{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:84px;
	height:44px;
	background-position: -567px -768px;
	overflow:hidden;
	display:block;
}
footer nav li a.gold span{
	display:none;
}

footer nav li a.cine{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:89px;
	height:44px;
	background-position: -679px -768px;
	overflow:hidden;
	display:block;
}
footer nav li a.cine span{
	display:none;
}
footer nav li a.cinema{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:86px;
	height:44px;
	background-position: 0 -826px;
	overflow:hidden;
	display:block;
}
footer nav li a.cinema span{
	display:none;
}
footer nav li a.kids{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:70px;
	height:44px;
	background-position: -113px -826px;
	overflow:hidden;
	display:block;
}
footer nav li a.kids span{
	display:none;
}

footer nav li a.cinenforet{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:120px;
	height:44px;
	background-position: -207px -826px;
	overflow:hidden;
	display:block;
}
footer nav li a.cinenforet span{
	display:none;
}

footer #footer_bottom{
	width:1050px;
	height:15px;
	margin:10px auto;
	overflow:hidden;
}
footer #footer_bottom ul{
	height:15px;
}
footer #footer_bottom li{
	float:left;
	height:15px;
	line-height: 15px;
	border-right: 1px solid #444444;
}
footer #footer_bottom li:last-child{
	border-right: 0;
}
footer #footer_bottom li a{
	font-size: 13px;
	font-weight:bold;
	letter-spacing:-1px;
	color:#444444;
	padding:0 9px;
}
footer #cjlogo{
	width:1050px;
	margin:0 auto;
	clear:both;
	position:relative;
	font-size: 12px;
	color:#555555;
	padding:20px 0 0 108px;
}
footer #cjlogo .cjlogo{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:90px;
	height:43px;
	background-position: -145px -319px;
	overflow:hidden;
	position: absolute;
	top:o; left:0;
}
footer #share{
	position:absolute;
	top:17%;
	right:8%;
}
footer #share a{
	float:left;
}
footer #share a.facebook{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:34px;
	height:34px;
	background-position: -509px -429px;
	display:block;
	overflow:hidden;
}
footer #share a.facebook span{
	display: none;
}
footer #share a.twitter{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:34px;
	height:34px;
	background-position: -551px -429px;
	display:block;
	overflow:hidden;
	margin-left:2px;
}
footer #share a.twitter span{
	display: none;
}
footer #share a.instagram{
	background:url("${pageContext.request.contextPath}/resources/images/common_sprite_area_v4_2016.png");
	width:34px;
	height:34px;
	background-position: -593px -429px;
	display:block;
	overflow:hidden;
	margin-left:2px;
}
footer #share a.instagram span{
	display: none;
}
footer #share select{
	margin-left:10px;
	width:150px;
	height:30px;
	background: #fdfcf0;
	color: #666;
    font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 300;
}
footer #share button{
	
	width:30px;
	height:30px;
	background: #666;
	color: #fdfcf0;
    font-weight: 300;
}
footer #share .copyright{
		margin: 10px 0 0 133px;
		font-weight: bold;
		font-size: 11px;
}
footer #footer_brick{
	margin-top:20px;
	height:150px;
	background:url("${pageContext.request.contextPath}/resources/images/bg_footer_com.gif");
	background-size: contain;
	clear:both;
}
</style>
</head>
<body>
<header>
	<div id="top_image" name="top_image">
		<div id="top_img_container">
		<a href="#"><img src="${pageContext.request.contextPath}/resources/images/pikachu.jpg" width=980px height=80px></a>
		<a href="#" id="top_a_x"><img src="${pageContext.request.contextPath}/resources/images/close.png" id="top_x"></a>
		</div>
	</div>
		<nav id="top_nav1">
			<ul id="ul_left">
				<li><a href="#" class="app"><span>CGV앱 4.0 설치</span></a></li>
				<li><a href="#" class="like"><span>Facebook 좋아요!</span></a></li>
				<li><a href="#" class="insta"><span>Instagram Follow</span></a></li>
				<li><a href="#" class="frugal"><span>알뜰한 영화관람법!</span></a></li>
			</ul>
			<ul id="ul_right">
				<li><a href="#" class="login"><span>로그인</span></a></li>
				<li><a href="#" class="join"><span>회원가입</span></a></li>
				<li><a href="#" class="mycgv"><span>MY CGV</span></a></li>
				<li><a href="#" class="vip"><span>VIP LOUNGE</span></a></li>
				<li><a href="#" class="specialclub"><span>CLUB 서비스</span></a></li>
				<li><a href="#" class="customer"><span>고객센터</span></a></li>
				<li><a href="#" class="showtimes"><span>ENGLISH TICKETING</span></a></li>
			</ul>
		</nav>
		<div id="bg_header">
		<nav id="top_nav2">
			<h2><img src="${pageContext.request.contextPath}/resources/images/h2_cultureplex.png" id="cul"></h2>
			<a href="#"><img src="${pageContext.request.contextPath}/resources/images/h1_cgv.png" id="cgv"></a>
			<ul>
				<li><a href="#" class="movie"><span>영화</span></a>
					<div class="div_submenu">
						<ul class="submenu" id="height150">
							<li><a href="#">무비차트</a></li>
							<li><a href="#">HD트레일러</a></li>
							<li><a href="#">무비파인더</a></li>								
							<li><a href="#">평점</a></li>
							<li><a href="#">CGV아트하우스</a></li>
						</ul>
					</div>
				</li>
					
				<li><a href="#" class="reservation"><span>예매</span></a>
					<div class="div_submenu">
						<ul class="submenu" id="height50">
							<li><a href="#">빠른예매</a></li>
							<li><a href="${pageContext.request.contextPath}/reserve/showTimes">상영시간표</a></li>
						</ul>
					</div>
				</li>
					
				<li><a href="#" class="theater"><span>극장</span></a>
					<div class="div_submenu">
						<ul class="submenu" id="height100">
							<li><a href="#">CGV 극장</a></li>
							<li><a href="#">특별관</a></li>
							<li><a href="#">CLUB서비스</a></li>
						</ul>
					</div>
				</li>
					
				<li><a href="#" class="event"><span>이벤트&컬처</span></a>
					<div class="div_submenu">
						<ul class="submenu" id="height80">
							<li><a href="#">이벤트</a></li>
							<li><a href="#">스토어</a></li>
							<li><a href="#">매거진</a></li>
						</ul>
					</div>
				</li>
			</ul>
				
			<div class="input_button">
			    <input type="text" size="10"><button type="button">검색</button>
			</div>
			<a href="#"><img src="${pageContext.request.contextPath}/resources/images/15361078064330.png" width=133px height=42px class="bee"></a>
			<a href="#" target=_blank><img src="${pageContext.request.contextPath}/resources/images/person.png" width=91px height=86px class="person"></a>
		</nav>
		</div>
</header>

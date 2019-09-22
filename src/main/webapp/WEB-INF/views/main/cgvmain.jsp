<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/brick.jsp"%>
<style type="text/css">
/*-----------------------section-----------------------------*/
section{
	width:980px;
	margin:0 auto;
}
section div#movie{
	margin-top:20px;
	background: url("${pageContext.request.contextPath}/resources/images/bg_h3_line.jpg") repeat-x 0 50%;
	text-align: center;
}
section div#container1{
	margin-top:10px;
	overflow:hidden;
}
section div#video{
	width:733px;
	float:left;
}
section div#video iframe{
	width:733px;
	height:388px;
}
section div#video_img{
	width:240px;
	float:right;
}
section div#event{
	margin-top:20px;
	text-align: center;
	background: url("${pageContext.request.contextPath}/resources/images/bg_h3_line.jpg") repeat-x 0 50%;
	clear:both;
}
section #middle_menu {
	clear:both;
	overflow:hidden;	
}
section #middle_menu ul{
	width:530px;
	height:40px;
	background:url("${pageContext.request.contextPath}/resources/images/back.png") top left no-repeat;
	background-size:contain;
	margin:0 auto;
	margin-top:10px;
	margin-bottom:15px;
}
section #middle_menu li{
	text-align: center;
	float:left;
	height:15px;
	line-height: 15px;
	margin-top:5px;
	padding:5px 10px;
	border-right: 1px solid white;
	font-weight: bold;
}
section #middle_menu li:first-child{
	padding-left:30px;
}
section #middle_menu li:last-child{
	border-right:0;
}
section #middle_menu li a{
	color:white;
}



section nav#middle_img{
	margin:0 auto;
	padding-bottom:30px;
	overflow:hidden;
	clear:both;
}
section nav#middle_img ul li{
	float:left;
	margin:0 2px;
}

section nav#middle_img2{
	margin:0 auto;
	padding-bottom:30px;
	overflow:hidden;
	clear:both;
}
section nav#middle_img2 ul li{
	float:left;
	margin:0 2px;
}
section nav#middle_img3{
	margin:0 auto;
	padding-bottom:30px;
	overflow:hidden;
	clear:both;
}
section nav#middle_img3 ul li{
	float:left;
	margin:0 2px;
}
section nav#middle_img4{
	margin:0 auto;
	padding-bottom:30px;
	overflow:hidden;
	clear:both;
}
section nav#middle_img4 ul li{
	float:left;
	margin:0 2px;
}
section nav#middle_img5{
	margin:0 auto;
	padding-bottom:30px;
	overflow:hidden;
	clear:both;
}
section nav#middle_img5 ul li{
	float:left;
	margin:0 2px;
}
section #img14{
	position: relative;
	height:275px;
	
}	
section #img14 nav#middle_img,nav#middle_img2,nav#middle_img3,nav#middle_img4,nav#middle_img5{
	position:absolute;
	top:75px;
	left:0;
	clear:both;
}
section #img14 input{
	display: none;
}
section #img14 nav{
	display: none;
}

section #img14 naV#middle_menu{
	display: block;
}
section #img14 input:nth-child(1):checked ~ nav#middle_menu ul li:nth-child(1) a{
	color:black;
}
section #img14 input:nth-child(2):checked ~ nav#middle_menu ul li:nth-child(2) a{
	color:black;
}
section #img14 input:nth-child(3):checked ~ nav#middle_menu ul li:nth-child(3) a{
	color:black;
}
section #img14 input:nth-child(4):checked ~ nav#middle_menu ul li:nth-child(4) a{
	color:black;
}
section #img14 input:nth-child(5):checked ~ nav#middle_menu ul li:nth-child(5) a{
	color:black;
}


section #img14 input:nth-child(1):checked ~ nav#middle_img{
	display:block;
}
section #img14 input:nth-child(2):checked ~ nav#middle_img2{
	display:block;
}
section #img14 input:nth-child(3):checked ~ nav#middle_img3{
	display:block;
}
section #img14 input:nth-child(4):checked ~ nav#middle_img4{
	display:block;
}
section #img14 input:nth-child(5):checked ~ nav#middle_img5{
	display:block;
}

section div#middle_container{
	margin-top:30px;
	overflow:hidden;
	clear:both;
	padding-top:20px;
	border-top:3px solid black;
}

section div#middle_container #img1{
	width:225px;
	height:260px;
	float:left;
	border:2px solid black;
	padding:3px;
	margin:5px;
}
section div#middle_container #img1 div{
	margin:0 auto;
}
section div#middle_container #img1 div img{
	display:block;
	width:223px;
	height:258px;
	border:1px solid black;
}
section div#middle_container #img2{
	width:460px;
	height:260px;
	float:left;
	border:2px solid black;
	padding: 3px;
	margin:5px;
}
section div#middle_container #img2 img{
	display:block;
	width:457px;
	height:257px;
	border:1px solid black;
	
}
section div#middle_container #img3{
	width:225px;
	height:260px;
	float:left;
	border:2px solid black;
	padding:3px;
	margin:5px;
}
section div#middle_container #img3 img{
	display:block;
	width:223px;
	height:258px;
	border:1px solid black;
}	

section div#notice{
	clear: both;
	margin-top:20px;
	border-bottom:1px solid black;
	padding:5px;
}
section div#notice span{
	font-weight: bold;
	margin-left:5px;
	font-size: 20px;
}
    
</style>

</head>
<body>
<section>
		<div id="movie">
			<img src="http://img.cgv.co.kr/R2014/images/title/h3_movie_selection.gif" alt="MOVIE SELECTION">
		</div>
		<div id="container1">
		<div id="video">
			<iframe src="https://www.youtube.com/embed/Ic4G_UhDiKg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
		<div id="video_img">
			<a href="https://www.youtube.com/watch?v=5NQxsLR8bwc"><img src="${pageContext.request.contextPath}/resources/images/onepiece2.jpg" width="240" height="388" border="0" alt="원피스 스탬피드"></a>
		</div>
		</div>
		<div id="event">
			<img src="http://img.cgv.co.kr/R2014/images/title/h3_event.gif" alt="EVENT">
		</div>
	<div id="img14">
			<input type="radio" checked="checked" id="first" name="tab">
			<input type="radio" id="second" name="tab">
			<input type="radio" id="third" name="tab">
			<input type="radio" id="fourth" name="tab">
			<input type="radio" id="fifth" name="tab">	
			
		<nav id="middle_menu">
			<ul>
				<li><a href="#" title="현재 선택됨"><label for="first">CGV스페셜</label></a></li>
				<li><a href="#"><label for="second">영화/예매</label></a></li>
				<li><a href="#"><label for="third">CGV아트하우스</label></a></li>
				<li><a href="#"><label for="fourth">제휴/할인</label></a></li>
				<li><a href="#"><label for="fifth">멤버십</label></a></li>
			</ul>
		</nav>
		
			<nav id="middle_img">
				<ul>
					<li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19440&amp;menu=0">
              	      <img src="${pageContext.request.contextPath}/resources/images/15553208159240.jpg" alt="4DX 특별기획전"> </a></li>
             	   <li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19440&amp;menu=0">
             	       <img src="${pageContext.request.contextPath}/resources/images/15558972364890.jpg" alt="마블 앤드게임"> </a></li>
             	   <li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19440&amp;menu=0">
              	      <img src="${pageContext.request.contextPath}/resources/images/15558974665830.jpg" alt="4DX 특별기획전"> </a></li>
					<li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19442&amp;menu=0">
                	    <img src="${pageContext.request.contextPath}/resources/images/15553208160030.jpg" alt="삐약이가 쏠께요!"></a></li>
         	   </ul>
			</nav>
			<nav id="middle_img2">
			
			<ul>
				<li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19434&menu=2">
                    <img src="${pageContext.request.contextPath}/resources/images/15553205683600.jpg" alt="4DX 특별기획전"> </a></li>
                <li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19467&menu=2">
                    <img src="${pageContext.request.contextPath}/resources/images/15558971295900.jpg" alt="마블 앤드게임"> </a></li>
                <li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19471&menu=2">
                    <img src="${pageContext.request.contextPath}/resources/images/15559856854240.jpg" alt="4DX 특별기획전"> </a></li>
				<li><a href="http://section.cgv.co.kr/event/running/EventZone.aspx?idx=1322">
                    <img src="${pageContext.request.contextPath}/resources/images/15558971296210.jpg" alt="삐약이가 쏠께요!"></a></li>
            </ul>
			</nav>
		
		
			<nav id="middle_img3">
				<ul>
					<li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19443&menu=8">
          	          <img src="${pageContext.request.contextPath}/resources/images/15554183874470.jpg" alt="4DX 특별기획전"> </a></li>
            	    <li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19455&menu=8">
                	    <img src="${pageContext.request.contextPath}/resources/images/15554912878180.jpg" alt="마블 앤드게임"> </a></li>
            	</ul>
			</nav>
		
			<nav id="middle_img4">
				<ul>
					<li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=19060&menu=4">
             	       <img src="${pageContext.request.contextPath}/resources/images/15471716686800.jpg" alt="4DX 특별기획전"> </a></li>
            	    <li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=17104&menu=4">
            	        <img src="${pageContext.request.contextPath}/resources/images/15471716687110.jpg" alt="마블 앤드게임"> </a></li>
            	    <li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=13796&menu=4">
             	       <img src="${pageContext.request.contextPath}/resources/images/15471716687270.jpg" alt="4DX 특별기획전"> </a></li>
					<li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=16473&menu=4">
             	       <img src="${pageContext.request.contextPath}/resources/images/15522884641350.jpg" alt="삐약이가 쏠께요!"></a></li>
         	   </ul>
			</nav>
		
			<nav id="middle_img5">
				<ul>
					<li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=15366&menu=9">
                  	    <img src="${pageContext.request.contextPath}/resources/images/15150348579280.jpg" alt="4DX 특별기획전"> </a></li>
              	  	<li><a href="http://www.cgv.co.kr/user/vip-lounge/event/2017/vip-special-day.aspx">
                	    <img src="${pageContext.request.contextPath}/resources/images/15150348579590.jpg" alt="마블 앤드게임"> </a></li>
               		 <li><a href="http://section.cgv.co.kr/event/Vip_CouponBook/default.aspx">
                	    <img src="${pageContext.request.contextPath}/resources/images/15150348577720.jpg" alt="4DX 특별기획전"> </a></li>
					<li><a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=15363&menu=9">
                     	<img src="${pageContext.request.contextPath}/resources/images/15150348579910.jpg" alt="삐약이가 쏠께요!"></a></li>
           		 </ul>
			</nav>
	</div>
			<div id="middle_container">
				<div id="img1">
					<div>
					<a href="http://section.cgv.co.kr/discount/Special/discount/EventDetail.aspx?Idx=19190&amp;pb=Y">
					<img src="${pageContext.request.contextPath}/resources/images/15532229731840.jpg" height=259px alt="스마일클럽"></a>
					</div>
				</div>
				<div id="img2">
					<div>
					<a href="/arthouse">
					<img src="${pageContext.request.contextPath}/resources/images/main_moviecollage.jpg"  height=273px alt="CGV ARTHOUSE, A Good Movie, A Better Life"></a>
					</div>
				</div>
				<div id="img3">
					<div>
					<a href="http://ad.cgv.co.kr/click/CGV/CGV_201401/main@Branding?ads_id=38299&amp;creative_id=38180&amp;click_id=50384&amp;event=" target="_blank">
					<img src="http://adimg.cgv.co.kr/images/201808/citi/0402_226x259.jpg" width="226" height="259" border="0" alt="광고-씨티카드"></a>
					</div>
				</div>
			</div>
				<div id="notice">
				<img src="${pageContext.request.contextPath}/resources/images/ico_notice.png"><span>공지사항</span>
				</div>
		
</section>

<%@ include file="../include/footer.jsp"%>
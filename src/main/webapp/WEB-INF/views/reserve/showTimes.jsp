<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/brick.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<style>
/*---------------------section--------------------*/

section{
	min-width:1900px;
	margin:0 auto;
}
#container{
	width:980px;
	margin:0 auto;
}
h1{
	font-size:31px;
	padding-bottom:10px;
	color:#333333;
	margin-top:20px;
}
div#left_container{
	width: 800px;
	float:left;
}
div#right_container{
	width:160px;
	float:right;
}
div#left_top{
	border-top:2px solid black;
	padding:12px 0;
	height:48px;
}
div#left_top_in{
	position: relative;
	height:48px;
	line-height: 48px;
}
#left_button{
	background: url("${pageContext.request.contextPath}/resources/images/sprite_btn.png") no-repeat;
	background-position: -117px -174px;
	position: absolute;
	left:0;
	top:15px;
	width:54px; height:19px;
}
#right_button{
	background: url("${pageContext.request.contextPath}/resources/images/sprite_btn.png") no-repeat;
	background-position: -117px -155px;
	position: absolute;
	top:15px;
	right:0;
	width:54px; height:19px;
}


div#top_ul{
	margin-left:80px;
}


div#top_ul ul li{
	float:left;
	height:48px;

}
div#top_ul ul li a{
	height:48px;
	display: block;
	float:right;
	color:#717171;
	font-size:30px;
	font-weight: bold;
	margin-right:10px;
}
div#top_ul ul li a span{
	height:48px;
	display:block;
	float:left;
	width:40%;
	font-size:11px;
	line-height: 15px;
	padding-top:10px;
}



div#top_ul_next{
	border-top:2px solid #474746;
	padding:3px;
	clear:both;
}
div#top_ul_next p{
	display:inline;
	color:#794624;
	font-size:13px;
	padding:5px;
}
div#top_ul_next #left_ul{
	float:left;
}
div#top_ul_next #left_ul li{
	float:left;
	font-size:13px;
	padding:5px;
	font-weight: bold;
}
div#top_ul_next #right_ul{
	float:right;
	font-size:13px;
	padding:5px;
	font-weight: bold;
}

div#top_ul_next #left_ul #sun{
	background: url("${pageContext.request.contextPath}/resources/images/sprite_icon.png") no-repeat;
	background-position: 0 -176px;
	padding-left:18px;
}
div#top_ul_next #left_ul #moon{
	
	background: url("${pageContext.request.contextPath}/resources/images/sprite_icon.png") no-repeat;
	background-position: 0 -195px;
	padding-left:13px;
}

div#top_ul_next #right_ul a{
	display: block;
	height:13px;
	padding-left:18px;
	background: url("${pageContext.request.contextPath}/resources/images/sprite_icon.png") no-repeat;
	background-position: 0 -158px;
	line-height: 13px;
}


/*----------small_container----------------------*/
#small_container{
	
}
#small_container #big_ul .ul_title{
	margin-bottom:15px;
	clear:both;
	border-top:1px solid black;
	padding-top:30px;
}
#small_container #big_ul #time_last{
	padding-bottom:30px;
	border-bottom:2px solid black;
}
#small_container #big_ul .big_ul_li{
	padding-bottom:10px;
}
#small_container #big_ul #b12{
	position: relative;
}
#year12{
	width:20px; height:20px;
	color:white;
	font-weight: bold;
	font-size:11px;
	background-color:#006cc7;
	border-radius: 15px;
	line-height: 20px;
	text-align:center;
	display:block;
	position:absolute;
	left:-25px;
	top:32px;
}
#small_container #big_ul #o15_1{
	position: relative;
}
#year15_1{
	width:20px; height:20px;
	color:white;
	font-weight: bold;
	font-size:11px;
	background-color:#ff7200;
	border-radius: 15px;
	line-height: 20px;
	text-align:center;
	display:block;
	position:absolute;
	left:-25px;
	top:32px;
}
#small_container #big_ul #o15_2{
	position: relative;
}
#year15_2{
	width:20px; height:20px;
	color:white;
	font-weight: bold;
	font-size:11px;
	background-color:#ff7200;
	border-radius: 15px;
	line-height: 20px;
	text-align:center;
	display:block;
	position:absolute;
	left:-25px;
	top:32px;
}
#small_container #big_ul .time{
	margin-bottom:15px;
	height:42px;
}
#small_container #big_ul .li_title{
	height:17px;
	font-size: 11px;
	margin-bottom:5px;
}
.ul_title h3{
	display: inline;
	font-size:16px;
}
.ul_title .running{
	color:#3e82a4;
	border:2px solid #3e82a4;
	border-radius:3px;
	font-size: 12px;
	font-weight:bold;
	height:15px;
	margin-left:7px;
}
.ul_title .infor{
	color:#666666;
	font-size: 13px;
	margin-left:3px;
}
#big_ul .big_ul_li .li_title{
	clear:both;
}
#big_ul .big_ul_li .li_title li{
	float:left;
	border-right:1px solid #ccc;
	padding-right:5px;
	margin-right:5px;
}
#big_ul .big_ul_li .li_title li:last-child{
	border-right:0;
}
#big_ul .big_ul_li .time{
	clear:both;
}
#big_ul .big_ul_li .time li{
	width:62px;
	height:30px;
	padding:5px;
	float:left;
	text-align: center;
	border:1px solid #ccc;
	border-right:0;
	font-weight: bold;
	font-size:12px;
	line-height: 16.5px;
}
#big_ul .big_ul_li .time li:last-child{
	border-right:1px solid #ccc;
}
#big_ul .big_ul_li .time li .time_color{
	color:#3e82a4;
	font-size:11px;
}

#bottom_img{
	margin-top:10px;
	clear:both;
}
</style>



<!-- -------------------------------------------------------section------------------------------------------------------------------- -->	
<section>
	
<div id="container">
	<h1>CGV대구</h1>
	<div id="left_container">
		<div id="left_top">
		  <div id="left_top_in">
			<a href="#" id="left_button"><button type="button"></button></a>
			<div id="top_ul">
				<ul id="date_ul">
					<c:forEach var="startDate" items="${stM }">
					<c:set var = "d" value="${startDate}"/>
					<li class="showDate" data-date="${fn:substring(d,0,10) }">
					<a href="javascript:void(0);">
					<span>${fn:substring(d,5,7) }월 ${fn:substring(d,17,18) }</span> ${fn:substring(d,8,10) }
					</a>
					</li>
					</c:forEach>
					
					<!-- <li><a href="#"><span>04월 목</span> 25</a></li>-->
				</ul>
			</div>
			<a href="#" id="right_button"><button type="button"></button></a>
		 </div>
		  
		</div>
		<div id="top_ul_next">
			<ul id="left_ul">
				<li><span id="sun">조조</span></li>
				<li><span id="moon">심야</span></li>
			</ul>
			<p>*시간을 클릭하시면 빠른 예매를 하실 수 있습니다.</p>
			<ul id="right_ul">
				<li><a href="#">관람등급 안내</a></li>
			</ul>
		</div>
		<div id="small_container">
			
			<ul id="big_ul">
				 <c:forEach var="showtimesMovie" items="${showtimesMovieList}">
				 ${showtimesMovie }
				 		<li class="big_ul_li">
							<div class="ul_title" id="o15_1">
								<span id="year15_1">${showtimesMovie.movie.mvAgeLimit }</span>
								<h3><a href="#">${showtimesMovie.movie.mvTitle }</a></h3>
								<span class="running">상영중</span><span class="infor">${showtimesMovie.movie.mvGenre}/${showtimesMovie.movie.mvRuntime}분/<fmt:formatDate value="${showtimesMovie.movie.mvStart}" pattern="yyyy.MM.dd"/>개봉</span>
							</div>
							<c:forEach var="kwan" items="${showtimesMovie.getShowtimeskwan()}">
								<div class="li_title">
								${kwan }
									<ul>
										<li>▶ ${kwan.kwanKind }</li>
										<li>${kwan.kwanName }</li>
										<li>총 ${kwan.allSeat }</li>
									</ul>
								</div>
								<div class="time">
									<ul>
										<%-- <c:forEach begin="1" end="${kwan.length }">
											<li><a href="#">${kwan.start }<br> <span class="time_color">${kwan.remainSeat }</span></a></li>
										</c:forEach> --%>
										
									</ul>
								</div>
							</c:forEach>
						</li>	
					</c:forEach> 
								
					
			
			  <li class="big_ul_li">
					
					
					
					<div class="li_title">
						<ul>
							<li>▶ 2D</li>
							<li>2관 6층</li>
							<li>총 124석</li>
						</ul>
					</div>
					
					<div class="time">
						<ul>
							<li><a href="site3.html">10:35<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">14:10<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">17:45<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">21:20<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">24:55<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">28:30<br> <span class="time_color">89석</span></a></li>
						</ul>
					</div>
					
					<div class="li_title">
						<ul>
							<li>▶ 2D</li>
							<li>3관 8층</li>
							<li>총 172석</li>
						</ul>
					</div>
					
					<div class="time">
						<ul>
							<li><a href="site3.html">11:05<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">14:40<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">18:15<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">21:50<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">25:25<br> <span class="time_color">89석</span></a></li>
						</ul>
					</div>
					
					<div class="li_title">
						<ul>
							<li>▶ 2D</li>
							<li>4관 8층</li>
							<li>총 124석</li>
						</ul>
					</div>
					
					<div class="time">
						<ul>
							<li><a href="site3.html">10:05<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">13:40<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">17:15<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">20:50<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">24:25<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">28:00<br> <span class="time_color">89석</span></a></li>
						</ul>
					</div>
					
					<div class="li_title">
						<ul>
							<li>▶ 2D</li>
							<li>6관 10층</li>
							<li>총 124석</li>
						</ul>
					</div>
					
					<div class="time">
						<ul>
							<li><a href="site3.html">16:05<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">23:25<br> <span class="time_color">89석</span></a></li>
						</ul>
					</div>
					
					<div class="li_title">
						<ul>
							<li>▶ 2D</li>
							<li>LG GRAM[5관] 10층</li>
							<li>총 172석</li>
						</ul>
					</div>
					
					<div class="time">
						<ul>
							<li><a href="site3.html">12:20<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">15:55<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">23:05<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">26:40<br> <span class="time_color">89석</span></a></li>
						</ul>
					</div>
					
					<div class="li_title">
						<ul>
							<li>▶ 3D</li>
							<li>1관[JD SPORTS관]6층</li>
							<li>총 158석</li>
						</ul>
					</div>
					
					<div class="time">
						<ul>
							<li><a href="site3.html">15:10<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">18:45<br> <span class="time_color">89석</span></a></li>
							<li><a href="site3.html">22:20<br> <span class="time_color">89석</span></a></li>
						</ul>
					</div>
				</li>
				
				<li class="big_ul_li">
					<div class="ul_title" id="o15_1"><span id="year15_1">15</span>
					<h3><a href="http://www.cgv.co.kr/movies/detail-view/?midx=81728">요로나의 저주</a></h3>
					<span class="running">상영중</span><span class="infor">호러/93분/2019.04.17 개봉</span></div>
					
						<div class="li_title">
							<ul>
								<li>▶ 2D</li>
								<li>6관 10층</li>
								<li>총 124석</li>
							</ul>
						</div>
						
						<div class="time">
							<ul>
								<li><a href="site3.html">12:05<br> <span class="time_color">89석</span></a></li>
								<li><a href="site3.html">14:05<br> <span class="time_color">89석</span></a></li>
							</ul>
					</div>
					
				</li>
				
				<li class="big_ul_li">
					<div class="ul_title" id="o15_2"><span id="year15_2">15</span><h3><a href="http://www.cgv.co.kr/movies/detail-view/?midx=81626">바이스</a></h3><span class="running">상영중</span><span class="infor">드라마/132분/2019.04.11 개봉</span></div>
					
						<div class="li_title">
							<ul>
								<li>▶ 2D</li>
								<li>6관 10층</li>
								<li>총 124석</li>
							</ul>
						</div>
						
						<div class="time" id="time_last">
							<ul>
								<li><a href="site3.html">09:20<br> <span class="time_color">89석</span></a></li>
								<li><a href="site3.html">27:00<br> <span class="time_color">89석</span></a></li>
							</ul>
					</div>
				</li> 
			</ul>
		</div>
	</div>
	
	
	<div id="right_container">
		<a href="https://www.facebook.com/KIWImovie.official/videos/347546565951131"><img src="${pageContext.request.contextPath}/resources/images/0423_160x300_01.jpg"></a>
		<a href="https://www.citibank.co.kr/card/index_promotion.jsp?ctnakey=03-1669-10235-71612&card_section=clear&site=i_cgv&ecid=AFCVDKRCCAKRC4&username=i_cgv&utm_source=CGV&utm_medium=AL"><img src="${pageContext.request.contextPath}/resources/images/0402_160x300.jpg"></a>
	</div>
	
	<div id=bottom_img>
		<a href="http://www.cgv.co.kr/ticket/?MOVIE_CD=20019245&MOVIE_CD_GROUP=20019245"><img src="${pageContext.request.contextPath}/resources/images/0424_980x90.jpg"></a>
	</div>
	
</div>
	
</section>
<script>



 	$(".showDate").click(function(){
 		var showDate = $(this).attr("data-date");
 		alert(showDate);
 		
 		$.ajax({
 			url : "${pageContext.request.contextPath}/reserve/showTimes",
 			type : "post",
 			data : JSON.stringify({showDate:showDate}),
 			headers:{
				"Content-Type":"application/json"
			},
 			dataType : "json",
 			success : function(res){
 				console.log(res);
 			}
 		})
 	})
		 
		 </script>

<%@ include file="../include/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.scrollbar.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.scrollbar.min.js"></script>
<style>
/*---------------------section--------------------*/

#section_container{
	width:1342px;
	margin:50px auto;
	overflow: hidden;
	margin-bottom:0;
}
#section_inner_container{
	width:980px;
	margin:0 20px;
	float:left;
	
	
}
.section_img{
	float:left;
}


/*--------------------------버튼--------------------------------*/
#button{
	text-align: right;
	
}
#button button{
	width:90px;
	height:25px;
	background: #f2f0e5;
	border:1px solid black;
	border-radius: 5px;
	font-size: 13px;
	font-weight: bold;
	text-align: center;
}
#button button a{
	display: block;
	width:90px;
	height:25px;
	line-height: 25px;
}
/*----------------------------표 구역---------------------------------*/
#table{
	margin-top:10px;
	overflow: hidden;
}
.table_inner{
	float:left;
	border-right:2px solid #d6d6d6;
	border-bottom:2px solid #d6d6d6;
	height:600px;
	overflow: hidden;
}
.table_inner:nth-child(1){
	border-left:2px solid #d6d6d6;
	width:270px;
}
.table_inner:nth-child(2){
	width:270px;
	
}
.table_inner:nth-child(3){
	width:100px;
	
}
.table_inner:nth-child(4){
	width:330px;
	
}

.table_top{
	text-align:center;
	font-weight:bold;
	color:#d6d6d6;
	background: #333333;
	height:30px;
	line-height: 30px;
}

.table_tap{
	width:238px;
	margin:20px auto;
	overflow: hidden;
}

.table_tap_1, .table_tap_2, .table_tap_3{
	height:30px;
	float: left;
	border-bottom:none;
	text-align: center;
	font-size: 13px;
	line-height: 30px;
	border-left:2px solid #acaba2;
	border-top:2px solid #acaba2;
	
}
.table_tap_1{
	width:50px;
}
.table_tap_2{	
	width:100px;
}
.table_tap_3{
	width:80px;
	height:30px;
	border-right:2px solid #acaba2;
}
.table_tap_1 a{
	display:block;
	height:30px;
	width:50px;
}
.table_tap_2 a{
	display:block;
	height:30px;
	width:100px;
}
.table_tap_3 a{
	display:block;
	height:30px;
	width:80px;
	height:30px;
}
/*--------------------------------영화-------------------------------------*/
#reserve_order{
	width:238px;
	border-bottom:2px solid #acaba2;
	margin:0 auto;
	margin-bottom:10px;
	text-align: left;
	font-size: 13px;
	padding-bottom:5px;
}
#reserve_order a{
	width:70px;
	display: inline-block;
	text-align: left;
}

/*-------------------------------스크롤바 만드는 css-------------------------------*/
.scroll-wrapper{
	width:238px;
	margin:0 auto;
}
.scrollbar-inner{
	width:238px;
	margin:5px auto;
	max-height:450px;
}
 
 .scroll-wrapper:nth-child(2){
	width:80px;
	margin:0 auto;
}
.scrollbar-inner:nth-child(2){
	width:90px;
	margin:20px auto;
	max-height:540px;
} 

.scroll-bar{
	height:50px !important;
	background-color: #797872 !important;
}
/*-------------------------------스크롤바 만드는 css 여기까지-------------------------------*/





/*------------------------------------영화제목 연령 추가-------------------------------------*/

.movie_li{
	overflow: hidden;
	width:210px;
	height:23px;
	margin: 5px 1px;
	padding:5px;
	
	
	
}
.year_number{
	width:18px; height:18px;
	color:white;
	font-weight: bold;
	font-size:12px;                    /*숫자*/
	border-radius: 15px;
	line-height: 20px;
	text-align:center;
	display:block;
	float: left;
	margin-right:5px;
	padding:1px;
}
.year_han{
	width:20px; height:20px;
	color:white;
	font-weight: bold;
	font-size:10px;                        /*한글*/
	border-radius: 15px;
	line-height: 20px;
	text-align:center;
	display:block;
	float: left;
	margin-right:5px;
	padding:1px;
	
}
.movie_name{
	display:block;
	float: left;
	font-size: 13px;
	
}
.movie_link{
	display: block;
	width:210px;
	height:23px;
	margin:0 auto;
	
	font-weight: bold; 
	color:#333333;
	
}
/*--------------------------------시간-------------------------------------*/
.table_sun_moon{
	width:300px;
	margin:20px auto;
	overflow: hidden;
	border-bottom:2px solid #acaba2;
}

 #left_ul{
	float:left;
}
 #left_ul li{
	float:left;
	font-size:13px;
	padding:5px;
	font-weight: bold;
}
#left_ul #sun{
	background: url("${pageContext.request.contextPath}/resources/images/sprite_icon.png") no-repeat;
	background-position: 0 -176px;
	padding-left:18px;
}
 #left_ul #moon{
	
	background: url("${pageContext.request.contextPath}/resources/images/sprite_icon.png") no-repeat;
	background-position: 0 -195px;
	padding-left:13px;
}

.runtime{
	width:300px;
	margin:0 auto;
	overflow: hidden;
	margin-top:20px;
}
.font_orange{
	font-weight: bold;
	color:#b54d15;
	font-size: 15px;
}
.gfloor{
	font-weight: bold;
	color:#2c2c29;
	font-size: 15px;
}
.all_seat{
	color:#666666;
	font-size: 15px;
}
.runtime_time{
	overflow:hidden;
	border-bottom:2px solid #bbb;
	padding-bottom:10px;
}
.runtime_time li{
	float: left;
	margin:7px 4px;
	width:88px;
}
.timerun, .timerun_seat{
	display: inline-block;
	font-size: 14px;
}
.timerun{
	border:1px solid #ccc;
	font-weight:bold;
	padding:2px 5px;
}
.timerun_seat{
	color:#3d7c35;
	margin-left:2px;
}

/*------------------------------------날짜-------------------------------------*/
#date_ul{
	margin-left:5px;
}
.sp_year, .sp_month{
	display: block;
	color:#666666;
	text-align: center;
	font-weight: bold;
	
}
.sp_year{
	margin-top:10px;
	font-size: 15px;
}
.sp_month{
	font-size: 30px;
}
.date_a{
	display: block;
	width:80px;
	height:30px;
	
}
.date_n_d{
	width:70px;
	margin-top:10px;
}
.sp_n, .sp_d{
	display: inline-block;
	text-align: center;
	height:30px;
	line-height: 30px;
	
	
}
.sp_n{
	width:45px;
	font-weight: bold;
	font-size: 20px;
}
.sp_d{
	width:25px;
	font-size: 15px;
}

/*-------------------------------------극장---------------------------------------*/
#city_dong{
	overflow: hidden;
	width:238px;
	margin:0 auto;
	
}
.city, .dong{
	width:105px;
	height:50px;
	float: left;
	border-bottom:1px solid	#f2f0e5;
}

.city a, .dong a{
	width:105px;
	height:50px;
	line-height:50px;
	display: block;
	font-size: 13px;
	
}
.city{
	text-align: right;
	background: #e6e4d9;
	padding-right:5px;
}
.dong{
	font-weight: bold;
	color:#333333;
	padding-left:5px;
}

/*--------------------------하단 영화 정보----------------------------------*/
#section_bottom{
	background: #1d1d1c;
	height:150px;
	clear: both;
}
#section_bottom > div{
	width:1342px;
	height:150px;
	margin:0 auto;
}
#section_bottom_container{
	width:980px;
	margin:0 auto;
	
	height:130px;
	
	padding:10px 0;
	overflow: hidden;
}

#movie_data, #movie_position, #movie_pay, #movie_seat_select{
	height:130px;
	float:left;
}
#movie_data{
	width:200px;
	
	padding-right:5px;
	overflow: hidden;
}
#movie_data div{
	float: left;
	height:130px;
}
#movie_data_img{
	width:80px;
	
}
#movie_data_name{
	font-size:12px;
	font-weight:bold;
	width:120px;
	
	
}
#movie_data_name a{
	display:block;
	margin-left:10px;
	margin-top : 10px;
	color:#cccccc;
}
#movie_data_name a:hover{
	text-decoration: underline;
}

#movie_position{
	width:200px;
	overflow: hidden;
	padding:5px;
	
}
#movie_position > span{
	display: block;
	font-size: 12px;
	color:#cccccc;
	float: left;
	margin:3px 0;
	height:15px;
}
.left_ui{
	width:50px;
}
.right_ui{
	width:150px;
	font-weight: bold;
	
}
#right_ui_day{
	font-size: 12px;
	color:#cccccc;
}
#right_ui_time{
	font-size: 12px;
	color:#cccccc;
}
#movie_pay{
	width:430px;
	line-height: 120px;
}
#movie_pay h1{
	color:#5b5b5b;
}
#movie_seat_select{
	width:100px;
}
#movie_seat_select a{
	display:block;
	width: 106px;
    height: 108px;
	background: url("${pageContext.request.contextPath}/resources/images/tnb_buttons.png") no-repeat;
	background-position: 0 -220px;
	margin-top:10px;
}

</style>


<!-- -------------------------------------------------------section------------------------------------------------------------------- -->
<section>
	<div id="section_container">
		<div class="section_img">
			<a href="#"><img src="${pageContext.request.contextPath}/resources/images/0402_160x300.jpg"></a>
		</div>
		<div id="section_inner_container">
			<div id="button">
				<button><a href="#">ENGLISH</a></button>
				<button><a href="#">예매 가이드</a></button>
				<button><a href="#">제휴할인혜택</a></button>
				<button><a href="#">상영시간표</a></button>
				<button><a href="#">예매 다시하기</a></button>
			</div>
			<div id="table">
				<div id="table_movie" class="table_inner">
					<div class="table_top">영화</div>
					
					<div class="table_tap">
						<div class="table_tap_1">
							<a href="#">전체</a>
						</div>
						
						<div class="table_tap_2">
							<a href="#">아트하우스</a>
						</div>
						
						<div class="table_tap_3">
							<a href="#">특별관</a>
						</div>
					</div>
					
					<div id="reserve_order">
						<a href="#">예매율순</a>
						<a href="#">가나다순</a>
					</div>
					
					<div class="scrollbar-inner">
						<ul id="movie_list">
							
							<!-- <li class="movie_li">
							<a href="#"><span class="year12">12</span>
							<span class="movie_name">영화이름</span></a>
							</li> -->
							
							
						</ul>
					</div>
					
				</div>	
				
				
				<div id="table_theater"  class="table_inner">	
					<div class="table_top">극장</div>
					
					<div class="table_tap">
						<div class="table_tap_1">
							<a href="#">전체</a>
						</div>
						
						<div class="table_tap_2">
							<a href="#">아트하우스</a>
						</div>
						
						<div class="table_tap_3">
							<a href="#">특별관</a>
						</div>
					</div>
					
					<div id="city_dong">
						<div class="city">
							<a href="javascript:void(0);">서울(29)</a>
						</div>
						<div class="dong">
							<a href="javascript:void(0);">강남</a>
						</div>
						<div class="city">
							<a href="javascript:void(0);">경기(40)</a>
						</div>
						<div class="dong">
							<a href="javascript:void(0);">강변</a>
						</div>
						<div class="city">
							<a href="javascript:void(0);">인천(10))</a>
						</div>
						<div class="dong">
							<a href="javascript:void(0);">건대입구</a>
						</div>
						<div class="city">
							<a href="javascript:void(0);">강원(4)</a>
						</div>
						<div class="dong">
							<a href="javascript:void(0);">구로</a>
						</div>
						<div class="city">
							<a href="javascript:void(0);">대전/충청(20)</a>
						</div>
						<div class="dong">
							<a href="javascript:void(0);">대학로</a>
						</div>
						<div class="city">
							<a href="javascript:void(0);">대구(9)</a>
						</div>
						<div class="dong">
							<a href="javascript:void(0);">동대문</a>
						</div>
						<div class="city">
							<a href="javascript:void(0);">부산/울산(13)</a>
						</div>
						<div class="dong">
							<a href="javascript:void(0);">등촌</a>
						</div>
						<div class="city">
							<a href="javascript:void(0);">경상(13)</a>
						</div>
						<div class="dong">
							<a href="javascript:void(0);">명동</a>
						</div>
						<div class="city">
							<a href="javascript:void(0);">광주/전라(23)</a>
						</div>
						<div class="dong">
							<a href="javascript:void(0);">목동</a>
						</div>
						
					</div>
				</div>
				
				<div id="table_date" class="table_inner">
					<div class="table_top">날짜</div>
						<div class="scrollbar-inner">
							<ul id="date_ul">
								
							</ul>
						</div>
				</div>
				
				<div id="table_time" class="table_inner">
					<div class="table_top">시간</div>
					<div class="table_sun_moon">
						<ul id="left_ul">
							<li><span id="sun">조조</span></li>
							<li><span id="moon">심야</span></li>
						</ul>
					</div>
					<div class="runtime">
						<div class="runtime_seat">
							<span class="font_orange">2D</span>
							<span class="gfloor">3관 10층</span>
							<span class="all_seat">(총230석)</span>
						</div>
						
						<div class="runtime_time">
							<ul>
								<li><a href="javascript:void(0);"><span class="timerun">12:10</span><span class="timerun_seat">180석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">13:30</span><span class="timerun_seat">220석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">14:45</span><span class="timerun_seat">165석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">15:20</span><span class="timerun_seat">132석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">17:15</span><span class="timerun_seat">210석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">20:50</span><span class="timerun_seat">143석</span></a></li>
							</ul>
						</div>
					</div>
					
					<div class="runtime">
						<div class="runtime_seat">
							<span class="font_orange">2D</span>
							<span class="gfloor">2관 9층</span>
							<span class="all_seat">(총180석)</span>
						</div>
						
						<div class="runtime_time">
							<ul>
								<li><a href="javascript:void(0);"><span class="timerun">12:30</span><span class="timerun_seat">180석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">13:35</span><span class="timerun_seat">123석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">15:45</span><span class="timerun_seat">130석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">16:20</span><span class="timerun_seat">80석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">17:50</span><span class="timerun_seat">39석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">19:40</span><span class="timerun_seat">132석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">20:50</span><span class="timerun_seat">120석</span></a></li>
								<li><a href="javascript:void(0);"><span class="timerun">22:30</span><span class="timerun_seat">151석</span></a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div class="section_img">
			<a href="#"><img src="${pageContext.request.contextPath}/resources/images/0402_160x300.jpg"></a>
		</div>
	</div>
	
	
	
	
	<div id="section_bottom">
	<div>
		<div id="section_bottom_container">
			<div id="movie_data">
				<div id="movie_data_img">
					<img src="${pageContext.request.contextPath}/resources/images/img2.jpg" width=80px height=130px>
				</div>
				<div id="movie_data_name">
					<a href="javascript:void(0);">모모랜드 : 연우입니다.</a>
				</div>
			</div>
			
			<div id="movie_position">
				<span class="left_ui">극장</span>  <span class="right_ui"></span>
				<span class="left_ui">일시</span>  <span class="right_ui"><span id="right_ui_day"></span><span id="right_ui_time"></span></span>
				<span class="left_ui">상영관</span>  <span class="right_ui" id="here"></span>
				<span class="left_ui">인원</span>  <span class="right_ui"></span>
			</div>
			
			<div id="movie_pay">
				<h1>> 좌석선택 > 결제</h1>
			</div>
			
			<div id="movie_seat_select">
				<a href="javascript:void(0);"></a>
			</div>
		</div>
	</div>
	</div>
</section>
<script>
$(function(){
	//스크롤 플러그인
	$(".scrollbar-inner").scrollbar();
	
	 $("#top_image a").click(function(){
		  $("#top_image").hide();
	  })
	
	                            
	// 영화이름과 연령 가지고옴
	$.ajax({
		url: "/cgv/resources/js/movie_name.json",
		type: "get",
		dataType : "json",
		success : function(res){
			
			$(res.list).each(function(i,obj){
				var year = obj.year;
				var movie = obj.movie;
				var $li = $("<li class='movie_li'>");
				var $span = $("<span class='year_number'>");
				var $span1 = $("<span class='year_han'>");
				var $a = $("<a class='movie_link'>");
				var $span3 = $("<span class='movie_name'>").html(movie);
				
				if(year=="전체"){
					$span1.html(year);
					$span1.addClass("green");
					$a.append($span1);
					
				}else if(year=="청불"){
					$span1.html(year);
					$span1.addClass("red");
					$a.append($span1);
					
				}else if(year=="12"){
					$span.html(year);
					$span.addClass("blue");
					$a.append($span);
					
				}else if(year=="15"){
					$span.html(year);
					$span.addClass("orange");
					$a.append($span);
				}
				
				
				
				$a.attr("href","javascript:void(0);"); // a태그의 화면이동기능을 막음.
				$a.append($span3);
				$li.append($a);
				$("#movie_list").append($li);
				
				$(".green").css("background-color","#52ae35");
				$(".red").css("background-color","#c7002a");
				$(".blue").css("background-color","#006cc7");
				$(".orange").css("background-color","#ca4d10");
				/* $(".movie_name").css("font-weight","bold");
				$(".movie_name").css("color","#333333"); */
				
				
				
			})
		}
		})
		
		// 탭 선택시 테두리 변경
		$(".table_tap div").click(function(){
			
			if( $(this).attr("class")=="table_tap_1" ){
				$(this).css("border","2px solid black").css("border-bottom","0");
				$(this).siblings().css("border","0").css("border-bottom","2px solid black").css("border-top","2px solid #acaba2").css("border-right","2px solid #acaba2");
			}else if( $(this).attr("class")=="table_tap_2" ){
				$(this).css("border","2px solid black").css("border-bottom","0");
				$(this).prev().css("border","0").css("border-bottom","2px solid black").css("border-top","2px solid #acaba2").css("border-left","2px solid #acaba2");
				$(this).next().css("border","0").css("border-bottom","2px solid black").css("border-top","2px solid #acaba2").css("border-right","2px solid #acaba2");
			}else if( $(this).attr("class")=="table_tap_3" ){
				$(this).css("border","2px solid black").css("border-bottom","0");
				$(this).siblings().css("border","0").css("border-bottom","2px solid black").css("border-top","2px solid #acaba2").css("border-left","2px solid #acaba2");
			}
		})

		
		// 영화 선택시 배경 바꿈 
				$(document).on("click",".movie_li",function(){
					$(".movie_li").css("background-color","#fdfcf0");
					$(".movie_li").find(".movie_link").css("color","#333333");
					$(".movie_li").css("border","none"); //원래색으로
					
					
					$(".date_n_d").css("background-color","#fdfcf0");
					$(".date_n_d").find(".date_a").css("color","#333333");
					$(".date_n_d").css("border","none");
					$(".date_a:contains('토')").css("color","#31597e");	
					$(".date_a:contains('일')").css("color","#ad2727");	//날짜색 초기화
					
					
					$(".timerun").css("background-color","#fdfcf0");
					$(".timerun").css("color","black");
					$(".timerun").css("border","1px solid #ccc"); //시간색 초기화
					
					
					
					$(".dong a").css("background-color","#fdfcf0").css("border","none");
					$(".dong a").css("color","#333333").css("border-bottom","1px solid #f2f0e5");
					$(".timerun").css("background-color","#fdfcf0");
					$(".timerun").css("color","black");
					$(".timerun").css("border","1px solid #ccc");// 동 초기화
					
					
					$(this).css("background-color","#333333");
					$(this).find(".movie_link").css("color","white");
					$(this).css("border","3px solid gray");
					
					$("#movie_data_name").find("a").html($(this).find(".movie_name").html());
					$(".right_ui").eq(0).text("");
					$("#right_ui_day").text("");
					$("#right_ui_time").text("");
					$("#here").text("");
					$("#movie_seat_select a").css("background-position","0 -220px");
				})
		
	
				
				//동 선택시 배경바꿈.
				$(".dong").click(function(){
				$(".dong a").css("background-color","#fdfcf0").css("border","none");
				$(".dong a").css("color","#333333").css("border-bottom","1px solid #f2f0e5");
				$(".timerun").css("background-color","#fdfcf0");
				$(".timerun").css("color","black");
				$(".timerun").css("border","1px solid #ccc");
				
				$(this).find("a").css("background-color","#333333");
				$(this).find("a").css("color","white");
				$(this).find("a").css("border","1px solid gray");
				
				$(".right_ui").eq(0).text($(this).find("a").html()+"CGV");
				$("#right_ui_day").text("");
				$("#right_ui_time").text("");
				$("#here").text("");
				$("#movie_seat_select a").css("background-position","0 -220px");
			})
				
				
				
				
				// 날짜 추가
		
				var today = new Date();
				var y = today.getFullYear(); // 년도
				var m = today.getMonth(); // 달(-1)
				var n = today.getDate(); // 일
				var n2 = n;
				var d = today.getDay(); // 요일(0~6)
				var dw = ["일","월","화","수","목","금","토"];
				var lastArray = [31,28,31,30,31,30,31,31,30,31,30,31];
				if(y%4==0 && y%100!=0 || y%400==0){
					lastArray[1] = 29;
				}
				var lastDay = lastArray[m];
				// 현재 달의 정보를 입력	
					var $li_YM = $("<li class='date_year_month'>"); // 년도 달 들어갈li
					var $div_YM = $("<div class='date_div'>"); // 년도 달 감싸는 div
					var $span_Y = $("<span class='sp_year'>").html(y); // 년도 span
					var $span_M = $("<span class='sp_month'>").html(m+1); // 달 span
					
					var $li = $("<li>"); //빈 li
					
					$div_YM.append($span_Y);
					$div_YM.append($span_M);
					$li_YM.append($div_YM);
					$("#date_ul").append($li_YM);
					$("#date_ul").append($li); // 빈li추가
					
				for(var i=0; i<=(lastDay-n) ;i++){	
					var $li_DN = $("<li class='date_n_d'>"); // 요일 일 들어갈 li
					var $a_ND = $("<a class='date_a'>");
					var $span_N = $("<span class='sp_n'>").html(n2++); // 일 span
					if(d==7){d=0};
					var $span_D = $("<span class='sp_d'>").html(dw[d++]); // 요일 span
					$a_ND.attr("href","javascript:void(0);");
					$a_ND.append($span_D);
					$a_ND.append($span_N);
					$li_DN.append($a_ND);
					$("#date_ul").append($li_DN);
				} 		
				// 다음 달의 정보를 입력	
				
				
				$li = $("<li>");
				$li_YM = $("<li class='date_year_month'>"); // 년도 달 들어갈li
				$div_YM = $("<div class='date_div'>"); // 년도 달 감싸는 div
				$span_Y = $("<span class='sp_year'>").html(y); // 년도 span
				$span_M = $("<span class='sp_month'>").html(m+2); // 달 span
				$div_YM.append($span_Y);
				$div_YM.append($span_M);
				$li_YM.append($div_YM);
				$("#date_ul").append($li_YM);
				$("#date_ul").append($li); // 빈li추가
				
				lastDay = lastArray[m+1];
				
			for(var i=1; i<=lastDay ;i++){	
				var $li_DN = $("<li class='date_n_d'>"); // 요일 일 들어갈 li
				var $a_ND = $("<a class='date_a'>");
				var $span_N = $("<span class='sp_n'>").html(i); // 일 span
				if(d==7){d=0};
				var $span_D = $("<span class='sp_d'>").html(dw[d++]); // 요일 span
				$a_ND.attr("href","javascript:void(0);");
				$a_ND.append($span_D);
				$a_ND.append($span_N);
				$li_DN.append($a_ND);
				$("#date_ul").append($li_DN);
			} 			
			$(".date_a:contains('토')").css("color","#31597e");	
			$(".date_a:contains('일')").css("color","#ad2727");	
			
			
			//요일 선택시 배경 바꿈 
			$(document).on("click",".date_n_d",function(){
					$(".date_n_d").css("background-color","#fdfcf0");
					$(".date_n_d").find(".date_a").css("color","#333333");
					$(".date_n_d").css("border","none");
					$(".date_a:contains('토')").css("color","#31597e");	
					$(".date_a:contains('일')").css("color","#ad2727");	
					
					$(".timerun").css("background-color","#fdfcf0");
					$(".timerun").css("color","black");
					$(".timerun").css("border","1px solid #ccc");
					$(this).css("background-color","#333333");
					$(this).find(".date_a").css("color","white");
					$(this).css("border","3px solid gray");
					
					
					var year = $(this).prevUntil(".date_year_month").last().prev().find(".sp_year").html(); //년도
					var month = $(this).prevUntil(".date_year_month").last().prev().find(".sp_month").html(); // 달
					var number = $(this).find(".sp_n").html(); //숫자
					var cday = $(this).find(".sp_d").html(); // 요일
					
					$("#right_ui_day").text(year+"."+month+"."+number+"("+cday+")");
					$("#right_ui_time").text("");
					$("#here").text("");
					$("#movie_seat_select a").css("background-position","0 -220px");
					
				})
				
			//시간 선택시 배경 바뀜
			
			$(".runtime_time li").click(function(){
				$(".timerun").css("background-color","#fdfcf0");
				$(".timerun").css("color","black");
				$(".timerun").css("border","1px solid #ccc");
				
				$(this).find(".timerun").css("background-color","#333333");
				$(this).find(".timerun").css("color","white");
				$(this).find(".timerun").css("border","1px solid gray");
				
				$("#right_ui_time").text($(this).find(".timerun").html());
				$("#here").text( $(this).parent().parent().parent().find(".gfloor").text());
				
				$("#movie_seat_select a").css("background-position","-150px -220px");
				$("#movie_seat_select a").attr("href","site4.html");
			})
			
			
})
</script>
<%@ include file="../include/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>


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

/*----------------------------------테이블-------------------------------*/
#table{
	margin-top:10px;
	overflow: hidden;
}
.table_top{
	text-align:center;
	font-weight:bold;
	color:#d6d6d6;
	background: #333333;
	height:30px;
	line-height: 30px;
	position: relative;
}
#replay{
	position: absolute;
	right:20px;
	color:#d6d6d6;
	font-size:15px;
}

/*---------------------------테이블 중간 ----------------------------------*/
#table_middle{
	overflow: hidden;
	border-bottom:2px solid #d4d3c9;
	position: relative;
}

#table_middle_left, #table_middle_right{
	float:left;
	margin:10px 15px;
}
#table_middle_left{
	border-right:1px solid #d4d3c9;
	width:450px;
	position: relative;
	color:black;

}
#table_middle_right{
	width:350px;
	margin-top:30px;
	
}
.select_number{
	width:320px;
	height:30px;
	line-height:30px;
	margin:5px;
	overflow: hidden;
	
}
.select_number span{
	display: block;
	float:left;
}
.year{
	
	width:60px;
}
.year_number{
	height:20px;
	text-align: center;
	line-height: 20px;
	
}
.year_number a{
	padding:3px;
	padding-bottom:6px;
	margin-right:5px;
	margin-top:2px;
	border:1px solid #aaa;
	width:15px;
	height:15px;
	display:block;
	font-weight: bold;
	color:black;
}
#sale{
	width:90px;
	position: absolute;
	right:5%;
	bottom:10px;
}
#sale a{
	width:90px;
	padding:3px;
	display: block;
	text-align:center;
	background: #926f60;
	font-size: 12px;
	color:white;
	border:1px solid #745447;
	border-radius: 5px;
}
#theater_info{
	
	margin-bottom:10px;
}
#theater_info span{
	font-size: 15px;
	border-right:1px solid #d4d3c9;
	padding:0 10px;
}
#theater_runtime_info{
	
	padding:0 10px;
	margin-top:20px;
	font-weight: bold;
	font-size: 20px;
	color:#5a5a5a;
}
#change_time{
	width:120px;
	position: absolute;
	right:3%;
	bottom:20px;
}
#change_time a{
	width:120px;
	padding:3px;
	display: block;
	text-align:center;
	background: #926f60;
	font-size: 12px;
	color:white;
	border:1px solid #745447;
	border-radius: 5px;
}

/*--------------------------------테이블 바텀----------------------------*/
#table_bottom{
	
	overflow: hidden;
	margin:20px auto;
	
}
#theater{
	float: left;
	
}

#theater{
	width:620px;
	margin-top:20px;
	margin-left:80px;
	
}
#theater_right{
	width:150px;
}
#screen{
	font-weight:bold;
	text-align:center;
	height:22px;
	line-height:22px;
	background: url("${pageContext.request.contextPath}/resources/images/screen_bg.png");
}

#seat{
	width:50%;
	margin:50px auto;
	overflow: hidden;
	
}
.on1{
	background-color: red !important;
}
.row{
	width:100%;
	height:20px;
	margin-bottom:1px;
}
#seat span{
	display: block;
	float: left;
	width:16px;
	margin:0 1px;
	text-align: center;
	font-weight: bold;
	
}

.row{
	font-size: 10px;
	display: block;
}
.col{
	border-top:1px solid #aaa;
	padding:2px;
}

.seat_number a{
	color:white;
	display: block;
	background: #666666;
	width:12px;
	height:12px;
	padding:2px;
	text-align: center;
	line-height: 12px;
	font-weight: bold;
	
}

/*--------------------------------------------오른쪽 영역---------------------------*/

#theater_right{
	margin-top:20px;
	float: right;
}

#big_watch{
	height:55px;
}
#big_watch a{
	background: url("${pageContext.request.contextPath}/resources/images/btn_zoom.png") no-repeat;
	display: block;
    width: 96px;
    height: 35px;
    overflow: hidden;
}
.seat_icon{
	margin-bottom: 20px;
}
.iconO, .iconI{
	height:15px;
}
.iconO{
	display: block;
	overflow:hidden;
	margin-bottom:10px;
	font-size: 12px;
	color:#aaa;
	
}
.iconI{
	display: block;
	width:15px;
	float: left;
	margin-right:5px;
	
	
}
#icon1{
	background: url("${pageContext.request.contextPath}/resources/images/seat_icons_20181129.png") no-repeat;
}
#icon2{
	background: url("${pageContext.request.contextPath}/resources/images/seat_icons_20181129.png") no-repeat;
	background-color: #bbb;
    background-image: none;
}
#icon3{
	background: url("${pageContext.request.contextPath}/resources/images/seat_icons_20181129.png") no-repeat;
	background-position: -25px 0;
    background-color: #bbb;
}
#icon4{
	background-image: none;
    border: 2px solid #ed8c00;
    width: 11px;
    height: 12px;
}
#icon5{
	    background-image: none;
    border: 2px solid #01c73c;
    width: 11px;
    height: 12px;
}
#icon6{
	background-image: none;
    border: 2px solid #f71708;
    width: 11px;
    height: 12px;
}
#icon7{
	background: url("${pageContext.request.contextPath}/resources/images/seat_icons_20181129.png") no-repeat;
	background-position: -75px 0;
}
#icon8{
	background: url("${pageContext.request.contextPath}/resources/images/seat_icons_20181129.png") no-repeat;
	background-position: -100px 0;
	
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

#movie_data, #movie_position, #movie_pay, #fee, #movie_seat_select{
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

#person_number{
		white-space: nowrap;  
		overflow: hidden;					
		text-overflow: ellipsis;
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
	width:200px;
	margin-top:10px;
}
#movie_pay > span{
	display: block;
	font-size: 12px;
	color:#cccccc;
	float: left;
	margin:10px 0;
	height:15px;
}
.left{
	width:50px;
}
.right{
	width:150px;
	font-weight: bold;
}


#fee{
	width:230px;
	margin-top:10px;
	overflow: hidden;
}
#fee div{
	float: left;
	
}
#fee div span{
	display: block;
	font-size: 12px;
	color:#cccccc;
	margin:10px 0;
	height:15px;
}
.left_fee{
	width:50px;
}
.right_fee{
	width:150px;
	font-weight: bold;
	text-align: right;
}

#sum_price{
	color:red !important;
}

#movie_seat_select{
	width:100px;
}
#movie_seat_select a{
	display:block;
	width: 106px;
    height: 108px;
	background: url("${pageContext.request.contextPath}/resources/images/tnb_buttons.png") no-repeat;
	background-position: 0 -330px;
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
				<div class="table_top">인원 / 좌석<a href="javascript:void(0);" id="replay">다시하기</a></div>
				<div id="table_middle">
					
					<div id="table_middle_left">
						
						<div id="sale">
							<a href="javascript:void(0);">관람 할인 안내</a>
						</div>
					</div>
					
					<div id="table_middle_right">
						<div id="theater_info">
							<span>CGV강남</span>
							<span>3관 10층</span>
							<span>남은좌석 99/124</span>
						</div>
						<div id="theater_runtime_info">
							2019.06.20 (목) 14:14~16:53
						</div>
						<div id="change_time">
							<a href="javascript:void(0);">상영 시간 변경하기</a>
						</div>
					</div>
				
				</div>
				
				<div id="table_bottom">
					<div id="theater">
						<div id="screen">
							SCREEN
						</div>
						<div id="seat">
							<!-- 극장배치표 -->
						</div>
					</div>
					
					<div id="theater_right">
						<div id="big_watch">
							<a href="javascript:void(0);"></a>
						</div>
						<div class="seat_icon">
							<span class="iconO">
								<span class="iconI" id="icon1"></span>
								선택
							</span>
							<span class="iconO">
								<span class="iconI" id="icon2"></span>
								예매완료
							</span>
							<span class="iconO">
								<span class="iconI" id="icon3"></span>
								선택불가
							</span>
						</div>
						
						<div class="seat_icon">
							<span class="iconO">
								<span class="iconI" id="icon4"></span>
								Economy Zone
							</span>
							<span class="iconO">
								<span class="iconI" id="icon5"></span>
								Standard Zone
							</span>
							<span class="iconO">
								<span class="iconI" id="icon6"></span>
								Prime Zone
							</span>
							<span class="iconO">
								<span class="iconI" id="icon7"></span>
								장애인석
							</span>
							<span class="iconO">
								<span class="iconI" id="icon8"></span>
								SWEETBOX
							</span>
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
				<span class="left_ui">극장</span>  <span class="right_ui">CGV 강남</span>
				<span class="left_ui">일시</span>  <span class="right_ui"><span id="right_ui_day">2019.6.20(목)</span><span id="right_ui_time">14:14</span></span>
				<span class="left_ui">상영관</span>  <span class="right_ui" id="here">3관 10층</span>
				<span class="left_ui">인원</span>  <span class="right_ui" id="person_number"></span>
			</div>
			
			<div id="movie_pay">
				<span class="left">좌석명</span>  <span class="right"></span>
				<span class="left">좌석번호</span>  <span class="right"></span>
			</div>
			
			<div id="fee">
				
				<div id="left_fee">
					<span class="left_fee" id="normal"></span>
					<span class="left_fee" id="young"></span>
					<span class="left_fee" id="special"></span>
					<span class="left_fee" id="price_sum"></span>
				</div>
				
				<div id="right_fee">
					<span class="right_fee" id="normal_price"></span>
					<span class="right_fee" id="young_price"></span>
					<span class="right_fee" id="special_price"></span>
					 <span class="right_fee" id="sum_price"></span>
				</div>
				 
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
	 $("#top_image a").click(function(){
		  $("#top_image").hide();
	  })
	
	  for(var j=0; j<3;j++){
			var $div = $("<div class='select_number'>");
			var $spanC = $("<span class='year'>");
			var year = "일반";
			if(j==1){
				year="청소년";
			}else if(j==2){
				year="우대";
			}
			$spanC.text(year); 
			$div.append($spanC);
			for(var i=0; i<=8; i++){
				var $spanSN = $("<span class='year_number'>");
				var $a = $("<a class='number_a'>");
				$a.attr("href","javascript:void(0);");
				$a.text(i);
				$spanSN.append($a);
				$div.append($spanSN);
				
			}
			$("#table_middle_left").append($div);
		}
		$(".select_number span:contains('0')").find("a").css("color","white")
														.css("background-color","#333333")
														.css("border","1px solid gray");
		$(".number_a:contains('0')").addClass("on");
		
		//극장좌석구조
		for(var j=0; j<8;j++){
			var $div = $("<div class='row'>");
			var $spanC = $("<span class='col'>");
			$spanC.text(String.fromCharCode(65+j)); // 아스키코드를 알파벳으로 변환
			$div.append($spanC);
			for(var i=1; i<=13; i++){
				var $spanSN = $("<span class='seat_number'>");
				var $a = $("<a>");
				$a.attr("href","javascript:void(0);");
				$a.text(i);
				$spanSN.append($a);
				$div.append($spanSN);
				if(j<2){
					$spanSN.css("border","2px solid orange");
				}else if(j<5){
					$spanSN.css("border","2px solid green");
				}else{
					$spanSN.css("border","2px solid red");
				}
				
			}
			$("#seat").append($div);
		}
	var num1;
	var normal = 0; //일반 인원
	var young = 0; // 청소년 인원
	var special = 0; // 우대 인원
	
	$(document).on("click",".number_a",function(){
			
			$(this).parents(".select_number").find(".number_a").removeClass("on");
			$(this).addClass("on");
			$(this).parent().siblings().children().css("color","black")
												  .css("background-color","#fdfcf0")
												  .css("border","1px solid #aaa");
			$(this).css("color","white")
					.css("background-color","#333333")
					.css("border","1px solid gray");
			
			
			var array = ["일반", "청소년","우대"];
			var result = "";
			var number = 0;
			num1 = 0;
			$(".on").each(function(i, obj){
				var num = Number($(obj).text());
				if(num > 0){
					result += array[i] + num +"명"+",";
					number += num;
					num1 += num;
					
					if(array[i]=="일반"){
						normal = num; // 일반인원
					}else if(array[i]=="청소년"){
						young = num; // 청소년 인원
					}else if(array[i]=="우대"){
						special = num; // 우대 인원
					}
				}
				
			})
			var result1 = result.substring(0, result.length-1);
			$("#person_number").text(result1);
		
		})
		
		var sum_p = 0; //일반인원가격
		var sum_r = 0; // 청소년 인원가격
		var sum_o = 0; // 우대인원가격
		var sum_s=0; // 일반인원좌석가격
		var sum_s1=0; // 청소년인원좌석가격
		var sum_s2=0; // 우대인원좌석가격
		$(document).on("click",".seat_number a",function(){
			
			if($(this).hasClass("on1")){
				alert("취소하시겠습니까?");
				$(this).removeClass("on1");
				return;
			}
			
			
			
			if( $(".on1").size() < normal){ // 일반인원부터 선택
				$(this).addClass("on1");
				sum_p += 10000; // 일반 요금
				if($(".on1").size()==num1){
					$("#movie_seat_select a").css("background-position","-150px -330px");
				}
				
				// 좌석 요금
				if($(this).parents(".row").index()<2){
					sum_s += 1000;
				}else if($(this).parents(".row").index()<5){
					sum_s += 2000;
				}else if($(this).parents(".row").index()<8){
					sum_s += 3000;
				}
				
				$("#normal").text("일반");
				$("#normal_price").text(sum_p+sum_s+"원");
				$("#price_sum").text("총가격");
				$("#sum_price").text(sum_p+sum_s+"원");
				
				
				}
			else if ( $(".on1").size() < normal+young ){ // 청소년인원 선택
				$(this).addClass("on1");
				sum_r += 8000;
				if($(".on1").size()==num1){
					$("#movie_seat_select a").css("background-position","-150px -330px");
				}
				
				
				if($(this).parents(".row").index()<2){
					sum_s1 += 1000;
				}else if($(this).parents(".row").index()<5){
					sum_s1 += 2000;
				}else if($(this).parents(".row").index()<8){
					sum_s1 += 3000;
				}
				
				
				$("#young").text("청소년");
				$("#young_price").text(sum_r+sum_s1+"원");
				$("#price_sum").text("총가격");
				$("#sum_price").text(sum_p+sum_s+sum_r+sum_s1+"원");
			}
			else if( $(".on1").size() < normal+young+special){ // 우대인원 선택
				$(this).addClass("on1");
				sum_o += 7000;
				
				if($(this).parents(".row").index()<2){
					sum_s2 += 1000;
				}else if($(this).parents(".row").index()<5){
					sum_s2 += 2000;
				}else if($(this).parents(".row").index()<8){
					sum_s2 += 3000;
				}
				
				
				$("#special").text("우대");
				$("#special_price").text(sum_o+sum_s2+"원");
				$("#price_sum").text("총가격");
				$("#sum_price").text(sum_p+sum_s+sum_r+sum_s1+sum_o+sum_s2+"원");
			}
			else{
				alert("선택가능한 인원을 초과하였습니다.");
			}
			
		})
	
		$("#movie_seat_select a").click(function(){
			alert("구현되지않은 기능입니다.");
		})
	
	
			
			
})
</script>
<%@ include file="../include/footer.jsp"%>
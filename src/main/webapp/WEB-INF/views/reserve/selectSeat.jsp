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
	width:65%;
	margin:50px auto;
	overflow: hidden;
	
}
.special{
	background-color: pink !important;
}
.young{
	background-color: blue !important;
}
.normal{
	background-color: black !important;
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
.border-orange{
	border:2px solid orange;
}
.border-green{
	border:2px solid green;
}
.border-red{
	border:2px solid red;
}
.border-white{
	border:2px solid #fdfcf0;
}
.border-white a{
	background: #fdfcf0 !important;
	cursor: default;
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
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
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
							<span>CGV대구</span>
							<span id="kwanName"></span>
							<span>남은좌석 ${reMain }/${all }</span>
						</div>
						<div id="theater_runtime_info">
							${startDay } (${day}) ${startTime }~${endTime }
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
							 <div class="row A">	
							 </div>
							  <div class="row B">	
							 </div>
							 <div class="row C">	
							 </div>
							 <div class="row D">	
							 </div>
							 <div class="row E">	
							 </div>
							 <div class="row F">	
							 </div>
							 <div class="row G">	
							 </div>
							 <div class="row H">	
							 </div>
							 <div class="row I">	
							 </div>
							 <div class="row J">	
							 </div>
							 <div class="row K">	
							 </div>
							 <div class="row L">	
							 </div>
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
					<img src="${pageContext.request.contextPath }/reserve/displayFile?filename=${img }" width=80px height=130px>
				</div>
				<div id="movie_data_name">
					<a href="javascript:void(0);">${movie }</a>
				</div>
			</div>
			
			<div id="movie_position">
				<span class="left_ui">극장</span>  <span class="right_ui">CGV 대구</span>
				<span class="left_ui">일시</span>  <span class="right_ui"><span id="right_ui_day">${startDay } (${day})</span><span id="right_ui_time">${startTime }</span></span>
				<span class="left_ui">상영관</span>  <span class="right_ui" id="here"></span>
				<span class="left_ui">인원</span>  <span class="right_ui" id="person_number"></span>
			</div>
			
			<div id="movie_pay">
				<span class="left">좌석명</span>  <span class="right"></span>
				<span class="left">좌석번호</span>  <span class="right" id="seatNumber"></span>
			</div>
			
			<div id="fee">
				
				<div id="left_fee">
					<span class="left_fee" id="normal">일반</span>
					<span class="left_fee" id="young">청소년</span>
					<span class="left_fee" id="special">우대</span>
					<span class="left_fee" id="price_sum">총가격</span>
				</div>
				
				<div id="right_fee">
					<span class="right_fee" id="normal_price">0원</span>
					<span class="right_fee" id="young_price">0원</span>
					<span class="right_fee" id="special_price">0원</span>
					 <span class="right_fee" id="sum_price">0원</span>
				</div>
				 
		 	</div>
			<div id="movie_seat_select">
				<a href="javascript:void(0);"  class="nopay"></a>
			</div>
		</div>
	</div>
	</div>
</section>
<script>


var rtNumber = "${rtNumber}";

$.ajax({
	url : "${pageContext.request.contextPath}/reserve/showTimesKwan",
	type : "get",
	data : {rtNumber:rtNumber},
	dataType : "json",
	success : function(res){
		console.log(res);
		var kwanPrice = res[0].structure.thName.thPrice;
		$("#kwanName").attr("data-price", kwanPrice);
		$("#kwanName").html(res[0].thName+"/"+res[0].structure.thName.thKinds);
		$("#here").html(res[0].thName+"/"+res[0].structure.thName.thKinds);
		$(".row").empty();
		$(res).each(function(i, obj){
			var $spanC = $("<span class='col'>");
			var $spanO = $("<span class='seat_number border-orange'>");
			var $spanG = $("<span class='seat_number border-green'>");
			var $spanR = $("<span class='seat_number border-red'>");
			var $spanW = $("<span class='seat_number border-white'>");
			var $a = $("<a href='javascript:void(0);'>");
			$a.attr("data-row", obj.structure.stRow);
			$a.attr("data-col", obj.structure.stColumn);
			$a.attr("data-seat", obj.structure.seatNumber);
			$a.attr("data-number", obj.rtNumber);
			$a.attr("data-use", obj.structure.useWithdrawal);
			if(obj.structure.stRow=="A"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".A").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanO.append($a);
					$(".A").append($spanO);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".A").append($spanW);
				}
				
			}else if(obj.structure.stRow=="B"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".B").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanO.append($a);
					$(".B").append($spanO);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".B").append($spanW);
				}
			}else if(obj.structure.stRow=="C"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".C").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanG.append($a);
					$(".C").append($spanG);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".C").append($spanW);
				}
			}else if(obj.structure.stRow=="D"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".D").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanG.append($a);
					$(".D").append($spanG);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".D").append($spanW);
				}
			}else if(obj.structure.stRow=="E"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".E").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanG.append($a);
					$(".E").append($spanG);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".E").append($spanW);
				}
			}else if(obj.structure.stRow=="F"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".F").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanG.append($a);
					$(".F").append($spanG);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".F").append($spanW);
				}
			}else if(obj.structure.stRow=="G"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".G").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanG.append($a);
					$(".G").append($spanG);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".G").append($spanW);
				}
			}else if(obj.structure.stRow=="H"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".H").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanR.append($a);
					$(".H").append($spanR);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".H").append($spanW);
				}
			}else if(obj.structure.stRow=="I"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".I").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanR.append($a);
					$(".I").append($spanR);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".I").append($spanW);
				}
			}else if(obj.structure.stRow=="J"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".J").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanR.append($a);
					$(".J").append($spanR);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".J").append($spanW);
				}
			}
			else if(obj.structure.stRow=="K"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".K").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanR.append($a);
					$(".K").append($spanR);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".K").append($spanW);
				}
			}else if(obj.structure.stRow=="L"){
				if(obj.structure.stColumn==1){
					$spanC.html(obj.structure.stRow);
					$(".L").append($spanC);
				}
				if(obj.structure.useWithdrawal==true){
					$a.html(obj.structure.stColumn);
					$spanR.append($a);
					$(".L").append($spanR);
				}else{
					$a.html(" ");
					$spanW.append($a);
					$(".L").append($spanW);
				}
			}
		
		})
	}
})


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
		
	var num1;
	var normal = 0; //일반 인원
	var young = 0; // 청소년 인원
	var special = 0; // 우대 인원
	var allH = 0; // 총 선택한 인원
	var seatN = "";
	$(document).on("click",".number_a",function(){
		$(this).parents(".select_number").find(".number_a").removeClass("on");
		$(this).addClass("on");
		var preH = 0;
		if($(this).parent().parent().find(".year").html()=="일반"){
			preH = young+special;
		}else if($(this).parent().parent().find(".year").html()=="청소년"){
			preH = normal+special;
		}else{
			preH = normal+young;
		} 
		var cP = Number($(this).html());
		var depend = cP+preH;
		
			if($(".on1").size()>depend){
				alert("선택한 좌석이 예매 인원 보다 많습니다.");
				return;
			}
			$(this).parent().siblings().children().css("color","black")
												  .css("background-color","#fdfcf0")
												  .css("border","1px solid #aaa");
			$(this).css("color","white")
					.css("background-color","#333333")
					.css("border","1px solid gray");
			
			
			var array = ["일반", "청소년","우대"];
			var result = "";
			$(".on").each(function(i, obj){
				var num = Number($(obj).text());
				if(num > 0){
					result += array[i] + num +"명"+",";
					
					if(array[i]=="일반"){
						normal = num; // 일반인원
					}else if(array[i]=="청소년"){
						young = num; // 청소년 인원
					}else if(array[i]=="우대"){
						special = num; // 우대 인원
					}
				}else{
					if(array[i]=="일반"){
						normal = 0; // 일반인원
					}else if(array[i]=="청소년"){
						young = 0; // 청소년 인원
					}else if(array[i]=="우대"){
						special = 0; // 우대 인원
					}
				}
				
				
			})
			var result1 = result.substring(0, result.length-1);
			$("#person_number").text(result1);
			allH = normal+young+special;
			$("#movie_seat_select a").css("background-position","0px -330px");
			$("#movie_seat_select a").removeClass("pay");
			$("#movie_seat_select a").addClass("nopay");
		})
		
		var sum_p=0;//일반인원가격
		var sum_r=0;// 청소년 인원가격
		var sum_o=0;// 우대인원가격
		var sum_s=0; // 일반인원좌석가격
		var sum_s1=0; // 청소년인원좌석가격
		var sum_s2=0; // 우대인원좌석가격
		
		var sumAll = 0;
		$(document).on("click",".seat_number a[data-use='true']",function(){
			var minus = 0;
			if($(this).parents(".row").index()<2){
				minus = 0;
			}else if($(this).parents(".row").index()<7){
				minus = 500;
			}else{
				minus = 1000;
			}
			seatN += ($(this).attr("data-seat")+",");
			
			var result1 = seatN.substring(0, seatN.length-1);
			
			$("#seatNumber").html(result1);
			if($(this).hasClass("normal")){
				var a = confirm("취소(일반)하시겠습니까?");
				if(a==true){
					$(this).removeClass();
					sum_p = sum_p-8000-Number($("#kwanName").attr("data-price"))-minus;
					sumAll -= (8000+Number($("#kwanName").attr("data-price"))+minus);
					$("#normal").text("일반");
					$("#normal_price").text(sum_p+"원");
					$("#price_sum").text("총가격");
					$("#sum_price").text(sumAll+"원");
					$("#movie_seat_select a").css("background-position","0px -330px");
					$("#movie_seat_select a").removeClass("pay");
					$("#movie_seat_select a").addClass("nopay");
				}
				return;
			}else if($(this).hasClass("young")){
				var a = confirm("취소(청소년)하시겠습니까?");
				if(a==true){
					$(this).removeClass();
					sum_r = sum_r-8000-Number($("#kwanName").attr("data-price"))-minus+1000;
					sumAll -= (8000+Number($("#kwanName").attr("data-price"))+minus-1000);
					$("#young").text("청소년");
					$("#young_price").text(sum_r+"원");
					$("#price_sum").text("총가격");
					$("#sum_price").text(sumAll+"원");
					$("#movie_seat_select a").css("background-position","0px -330px");
					$("#movie_seat_select a").removeClass("pay");
					$("#movie_seat_select a").addClass("nopay");
				}
				return;
			}else if($(this).hasClass("special")){
				var a = confirm("취소(우대)하시겠습니까?");
				if(a==true){
					$(this).removeClass();
					sum_o = sum_o-8000-Number($("#kwanName").attr("data-price"))-minus+2000;
					sumAll -= (8000+Number($("#kwanName").attr("data-price"))+minus-2000);
					$("#special").text("우대");
					$("#special_price").text(sum_o+"원");
					$("#price_sum").text("총가격");
					$("#sum_price").text(sumAll+"원");
					$("#movie_seat_select a").css("background-position","0px -330px");
					$("#movie_seat_select a").removeClass("pay");
					$("#movie_seat_select a").addClass("nopay");
				}
				return;
			}
			
			if( $(".normal").size() < normal){ // 일반인원부터 선택
				$(this).addClass("on1 normal");
				
				if($(".on1").size()==allH){
					$("#movie_seat_select a").css("background-position","-150px -330px");
					$("#movie_seat_select a").addClass("pay");
					$("#movie_seat_select a").removeClass("nopay");
				}
				
				// 좌석 요금
				if($(this).parents(".row").index()<2){
					sum_s = 0;
				}else if($(this).parents(".row").index()<7){
					sum_s = 500;
				}else{
					sum_s = 1000;
				}
				sum_p += (8000+Number($("#kwanName").attr("data-price"))+sum_s); // 일반 요금
				sumAll += (8000+Number($("#kwanName").attr("data-price"))+sum_s);
				$("#normal").text("일반");
				$("#normal_price").text(sum_p+"원");
				$("#price_sum").text("총가격");
				$("#sum_price").text(sumAll+"원");
				
				return;
				}
			else if ( $(".young").size() < young ){ // 청소년인원 선택
				$(this).addClass("on1 young");
				
				if($(".on1").size()==allH){
					$("#movie_seat_select a").css("background-position","-150px -330px");
					$("#movie_seat_select a").addClass("pay");
					$("#movie_seat_select a").removeClass("nopay");
				}
				
				// 좌석 요금
				if($(this).parents(".row").index()<2){
					sum_s = 0;
				}else if($(this).parents(".row").index()<7){
					sum_s = 500;
				}else{
					sum_s = 1000;
				}
				sum_r += (8000+Number($("#kwanName").attr("data-price"))-1000+sum_s);
				sumAll += (8000+Number($("#kwanName").attr("data-price"))-1000+sum_s);
				
				$("#young").text("청소년");
				$("#young_price").text(sum_r+"원");
				$("#price_sum").text("총가격");
				$("#sum_price").text(sumAll+"원");
				return;
			}
			else if( $(".special").size() < special){ // 우대인원 선택
				$(this).addClass("on1 special");
				if($(".on1").size()==allH){
					$("#movie_seat_select a").css("background-position","-150px -330px");
					$("#movie_seat_select a").addClass("pay");
					$("#movie_seat_select a").removeClass("nopay");
				}
				
				// 좌석 요금
				if($(this).parents(".row").index()<2){
					sum_s = 0;
				}else if($(this).parents(".row").index()<7){
					sum_s = 500;
				}else{
					sum_s = 1000;
				}
				sum_o += (8000+Number($("#kwanName").attr("data-price"))-2000+sum_s);
				sumAll += (8000+Number($("#kwanName").attr("data-price"))-2000+sum_s);
				$("#special").text("우대");
				$("#special_price").text(sum_o+"원");
				$("#price_sum").text("총가격");
				$("#sum_price").text(sumAll+"원");
				return;
			}
			else{
				alert("선택가능한 인원을 초과하였습니다.");
			}
			
		})
	
	
	$("#movie_seat_select a").click(function(){
		if($(this).hasClass("nopay")){
			alert("좌석을 선택하세요.");
			return;
		}
		var a = confirm("결제하시겠습니까?");
		if(a==false){
			return;
		}else{
			var seat = $("#seatNumber").html();
			var person = $("#person_number").html();
			var totalprice = $("#sum_price").html();
			var kwan = $("#kwanName").html();
			$.ajax({
				url : "${pageContext.request.contextPath}/reserve/pay",
				type : "get",
				data : {rtNumber:rtNumber, seat:seat,person:person, totalprice:totalprice, kwan:kwan },
				dataType : "text",
				success : function(res){
					console(res);
				}
			})	
		}
	}) 
</script>
<%@ include file="../include/footer.jsp"%>
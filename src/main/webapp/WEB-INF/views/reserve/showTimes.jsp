<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<style>
/*---------------------section--------------------*/
a{
	cursor: pointer;
}
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
	margin-bottom:5px;
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
	margin-left:25px;
	clear:both;
	padding-top:25px;
}
#small_container #big_ul .big_ul_li{
	padding-bottom:10px;
	border-top:1px solid black;
}
#small_container #big_ul .ul_title{
	position: relative;
}
.year{
	width:20px; height:20px;
	color:white;
	font-weight: bold;
	font-size:11px;
	border-radius: 15px;
	line-height: 20px;
	text-align:center;
	display:block;
	position:absolute;
	left:-25px;
}
.year12{
	background-color:#006cc7;
}
.year15{
	background-color:#ff7200;
}
.yearAll{
	background-color:rgb(82, 174, 53);
}
.yearAdult{
	background-color:rgb(199, 0, 42);
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

#anchor{
	width: 100%;
    background-color: #f1f0e5;
    border-bottom: 1px solid #cacac0;
    color: #666;
    font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 300;
    height:25px;
}
#anchor ul{
	list-style: none;
	width:980px;
	margin:0 auto;
}
#anchor ul li{
	float: left;
	line-height: 25px;
	margin-left: 12px;
    padding-left: 20px;
    background: url(${pageContext.request.contextPath}/resources/images/join/ico_arrow.png) no-repeat 0 50%;
    font-size: 12px;
    vertical-align: baseline;
	
}
#anchor ul li:first-child {
	background: none;
}
#anchor ul li:first-child img{
	margin-top:4px;
}
#anchor ul li.last{
	color: #222;
    font-size: 12px;
    text-decoration: underline;
    font-weight: 500;
}
</style>
<div id="anchor">
	<ul>
		<li>
			<a href="/cgv"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a>
		</li>
		<li>
			<a href="/cgv/reserve/showTimes2">예매</a>
		</li>
		<li class="last">
			상영시간표
		</li>
	</ul>
</div>


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
	$.ajax({
		url : "${pageContext.request.contextPath}/reserve/showTimesData",
		type : "get",
		dataType : "json",
		success : function(res){
			console.log(res);
			if(res.no=="no"){
				alert("현재 상영중인 영화가 없습니다.");
				return;
			}
			$(res.stM).each(function(i,obj){
				var year = obj.substring(0,4);
				var month = obj.substring(5, 7);
				var day = obj.substring(17,18);
				var date = obj.substring(8,10);
				var $li = $("<li class='showDate' data-date='"+obj.substring(0,10)+"'>");
				var $a = $('<a href="javascript:void(0);">'); // yyyy-MM-dd 형식으로 넘겨야함.
				var $span = $("<span>");
				$span.html(month+"월"+day);
				$a.append($span).append(" "+date);
				$li.append($a);
				$("#date_ul").append($li);
				
			})
			list(res);
		}
	})

function kwan(obj){
		var $liS = $("<li>");
		var $aS = $('<a href="${pageContext.request.contextPath}/reserve/selectSeat?rtNumber='+obj.rtNumber+'&reMain='+obj.remainSeat+'&all='+obj.allSeat+'&start='+obj.thStart+'&end='+obj.thEnd+'&movie='+obj.mvNumber.mvTitle+'&img='+obj.mvNumber.mvImg+'">');
		var $br = $("<br>");
		var $spanTC = $('<span class="time_color">');
		$spanTC.append(obj.remainSeat).append("석");
		
		var d = new Date(obj.thStart);
		var time = ("00"+d.getHours()).slice(-2)+":"+ ("00"+d.getMinutes()).slice(-2);
		
		$aS.append(time).append($br).append($spanTC);
		$liS.append($aS);
		return $liS;
	}
function kwan2(obj){
	var $divL = $('<div class="li_title" data-kwan="'+obj.thName.thName+'">');
	var $ul = $("<ul>");
	var $liK = $("<li>");
	var $liN = $("<li>");
	var $liA = $("<li>");
	
	$liK.append("▶").append(obj.thName.thKinds);
	$liN.append(obj.thName.thName);
	$liA.append("총").append(obj.allSeat).append("석");
	$ul.append($liK).append($liN).append($liA);
	$divL.append($ul);
	
	return $divL;
}
function showtime(obj){
	var $divT = $('<div class="time">');
	var $ul2 = $("<ul>");
	var $liS = kwan(obj);
	$ul2.append($liS); 
	$divT.append($ul2);
	return $divT;
}
function list(res){
	$("#big_ul").empty();
	var count = 0; // 영화 인덱스.
	$(res.cList).each(function(i,obj){
		if(count>0){//두번째부터
			var li = $("#big_ul").find(".big_ul_li").eq(count-1); // 바로 전에 추가된 li
			var mname = $(li).find(".ul_title").eq(0);//바로전에 추가된 영화
			if($(mname).attr("data-movie")==obj.mvNumber.mvNumber){//바로전에 추가된 영화랑 이름이 같으면
					//li를 추가할 필요없음. 제목추가할 필요없음.
					
				var kname = $(li).find(".li_title:last");
				if(obj.thName.thName ==$(kname).attr("data-kwan") ){ // 상영관도 같음.
					var $liS = kwan(obj);
					kname.next().find("ul").append($liS);
					
					
				}else{// 상영관이 다름.
					var $divL = kwan2(obj);
					li.append($divL);
					
					// 시작시간
					var $divT = showtime(obj);
					li.append($divT);
				}
				
			}else{ // 바로전에 추가된 영화랑 이름이 다르면영화이름이 다르면
				movieList(obj);
				count++;
				}
			
		}else{ // 처음 실행하는거.
			movieList(obj);
			count++;
		}
	})
	
	
	var a = $("#big_ul").find(".year");

	$(a).each(function(i,obj){
		if($(obj).attr("data-age")=='12'){
			$(obj).addClass("year12");
		}
		if($(obj).attr("data-age")=='15'){
			$(obj).addClass("year15");
		}
		if($(obj).attr("data-age")=='전체'){
			$(obj).addClass("yearAll");
		}
		if($(obj).attr("data-age")=='청불'){
			$(obj).addClass("yearAdult");
		}
	})
}

 function movieList(obj){
	
	var $li = $('<li class="big_ul_li">')
	var $div = $('<div class="ul_title" data-movie="'+obj.mvNumber.mvNumber+'">');
	var $spanY = $('<span class="year" data-age="'+obj.mvNumber.mvAgeLimit+'">');
	var $h3 = $('<h3>');
	var $a = $('<a href="#" data-movie="'+obj.mvNumber.mvNumber+'" class="mvNumber">'); // 영화번호 담음.
	var $spanR = $('<span class="running">');
	var $spanI = $('<span class="infor">');
	var date = new Date(obj.mvNumber.mvStart);
	var genre = obj.mvNumber.mvGenre+"/"+obj.mvNumber.mvRuntime+"분/"+date.getFullYear()+"-"+("00"+(date.getMonth()+1)).slice(-2)+"-"+("00"+date.getDate()).slice(-2)+"개봉";
	
	$spanY.append(obj.mvNumber.mvAgeLimit);
	$a.append(obj.mvNumber.mvTitle);
	$h3.append($a);
	$spanR.append("상영중");
	$spanI.append(genre);
	$div.append($spanY).append($h3).append($spanR).append($spanI);
	$li.append($div); // 영화 등록
	
	
	// 관
	var $divL = kwan2(obj);
	$li.append($divL);
	
	// 시작시간
	var $divT = showtime(obj);
	$li.append($divT);
	
	$("#big_ul").append($li);
	
}	
 	
 	$(document).on("click",".showDate",function(){
 		var closeDate = $(this).attr("data-date");
 		$.ajax({
 			url : "${pageContext.request.contextPath}/reserve/showTimes",
 			type : "post",
 			data : JSON.stringify({closeDate:closeDate}),
 			headers:{
				"Content-Type":"application/json"
			},
 			dataType : "json",
 			success : function(res){
 				console.log(res);
 				list(res);
 			}
 		})
 	})
 	
 	
 	
		 
</script>

<%@ include file="../include/footer.jsp"%>
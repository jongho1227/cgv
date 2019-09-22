<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="managerMain.jsp"%>

<style>
#makeContainer{
	width:1920px;
	min-width: 1920px;
}
#table_bottom{
	overflow: hidden;
	width:800px;
	margin:auto;
	margin-top:30px;
	clear: both;	
	border:1px solid black;
}

#theater{
	width:620px;
	margin:auto;
	margin-top:20px;
	margin-left:80px;
	
}

#screen{
	font-weight:bold;
	text-align:center;
	height:22px;
	line-height:22px;
	background: url("${pageContext.request.contextPath}/resources/images/screen_bg.png");
}

#seat{
	width:380px;
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
	border:2px solid white;
}
.border-white a{
	background: white !important;
}
#theater_name{
	text-align: center;
	
}
.selectedSeat{
	background: yellow !important;
	font-weight: bold !important;
	color:black !important;
}
</style>

<div id="makeContainer">
	<h1 id="theater_name">1관</h1>
	<div id="table_bottom">
		 <select name="thName">
			<c:forEach var="tname" items="${list }">
				<option>${tname.thName }</option>
			</c:forEach>						
		</select> 
		
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
		<div id="selectBtn">
			<button type="button" id="selectedRemove">선택삭제</button>
			<button type="button" id="RowRemove">가로줄 삭제</button>
			<button type="button" id="ColRemove">세로줄 삭제</button>
			<button type="button" id="restore">초기값복원</button>
		</div>
	</div>
</div>


<script>
	getTheater("1관");
	
	$("select").change(function(){
		var tname = $(this).val();
		getTheater(tname);
	})
	
	$(document).on("click", ".row .seat_number", function(){
		
		if($(this).find("a").hasClass("selectedSeat")){
			$(this).find("a").removeClass("selectedSeat");
		}else{
			$(this).find("a").addClass("selectedSeat");
		}
	})
	$("#selectedRemove").click(function(){
		var tname = $("#theater_name").html();
		var s = $(".selectedSeat");
		var selected = new Array();
		
		$(s).each(function(i,obj){
			selected[i] = $(obj).attr("data-seat");
		})
		 $.ajax({
			url : "updateTheater",
			type : "post",
			traditional : true, //배열 넘길때 이거 써야됨.
			data : {"kind":"selectedRemove", "selected" : selected, "tname" : tname},
			dataType : "json",
			success : function(res){
				console.log(res);
				getTheater(tname);
			}
		}) 
		
	})
	
	$("#RowRemove").click(function(){
		var tname = $("#theater_name").html();
		var s = $(".selectedSeat");
		var selected = new Array();
		$(s).each(function(i,obj){
			selected[i] = $(obj).attr("data-row");
		})
		 $.ajax({
			url : "updateTheater",
			type : "post",
			traditional : true, //배열 넘길때 이거 써야됨.
			data : {"kind":"RowRemove", "selected" : selected, "tname" : tname},
			dataType : "json",
			success : function(res){
				console.log(res);
				getTheater(tname);
			}
		}) 
		
	})
	
	$("#ColRemove").click(function(){
		var tname = $("#theater_name").html();
		var s = $(".selectedSeat");
		var selected = new Array();
		$(s).each(function(i,obj){
			selected[i] = $(obj).attr("data-col");
		})
		
		 $.ajax({
			url : "updateTheater",
			type : "post",
			traditional : true, //배열 넘길때 이거 써야됨.
			data : {"kind":"colRemove", "selected" : selected, "tname" : tname},
			dataType : "json",
			success : function(res){
				console.log(res);
				getTheater(tname);
			}
		}) 
		
	})
	
	$("#restore").click(function(){
		var tname = $("#theater_name").html();
		 $.ajax({
			url : "updateTheater",
			type : "post",
			traditional : true, //배열 넘길때 이거 써야됨.
			data : {"kind":"restore", "tname" : tname},
			dataType : "json",
			success : function(res){
				console.log(res);
				getTheater(tname);
			}
		}) 
		
	})
	
	
	function getTheater(tname){
		$.ajax({
			url : "updateTheater/"+tname,
			type: "get",
			dataType : "json",
			success : function(res){
				console.log(res);
				$(".row").empty();
				$("#theater_name").html(res.name);
				$(res.stList).each(function(i, obj){
					var $spanC = $("<span class='col'>");
					var $spanO = $("<span class='seat_number border-orange'>");
					var $spanG = $("<span class='seat_number border-green'>");
					var $spanR = $("<span class='seat_number border-red'>");
					var $spanW = $("<span class='seat_number border-white'>");
					var $a = $("<a href='javascript:void(0);'>");
					$a.attr("data-row", obj.stRow);
					$a.attr("data-col", obj.stColumn);
					$a.attr("data-seat", obj.seatNumber);
					if(obj.stRow=="A"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".A").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanO.append($a);
							$(".A").append($spanO);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".A").append($spanW);
						}
						
					}else if(obj.stRow=="B"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".B").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanO.append($a);
							$(".B").append($spanO);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".B").append($spanW);
						}
					}else if(obj.stRow=="C"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".C").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanG.append($a);
							$(".C").append($spanG);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".C").append($spanW);
						}
					}else if(obj.stRow=="D"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".D").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanG.append($a);
							$(".D").append($spanG);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".D").append($spanW);
						}
					}else if(obj.stRow=="E"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".E").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanG.append($a);
							$(".E").append($spanG);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".E").append($spanW);
						}
					}else if(obj.stRow=="F"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".F").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanR.append($a);
							$(".F").append($spanR);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".F").append($spanW);
						}
					}else if(obj.stRow=="G"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".G").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanR.append($a);
							$(".G").append($spanR);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".G").append($spanW);
						}
					}else if(obj.stRow=="H"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".H").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanR.append($a);
							$(".H").append($spanR);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".H").append($spanW);
						}
					}else if(obj.stRow=="I"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".I").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanR.append($a);
							$(".I").append($spanR);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".I").append($spanW);
						}
					}else if(obj.stRow=="J"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".J").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanR.append($a);
							$(".J").append($spanR);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".J").append($spanW);
						}
					}
					else if(obj.stRow=="K"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".K").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
							$spanR.append($a);
							$(".K").append($spanR);
						}else{
							$a.html(" ");
							$spanW.append($a);
							$(".K").append($spanW);
						}
					}else if(obj.stRow=="L"){
						if(obj.stColumn==1){
							$spanC.html(obj.stRow);
							$(".L").append($spanC);
						}
						if(obj.useWithdrawal==true){
							$a.html(obj.stColumn);
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
	}
	

</script>







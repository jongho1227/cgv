<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<style>
	div.bx-wrapper{
		width:960px;
	}
	div#main_img{
		position: relative;
	}
	.bx-wrapper .bx-pager {
    position: absolute;
    bottom: 30px;
    left:460px;
    }
    .bx-wrapper .bx-pager.bx-default-pager a:hover,
	.bx-wrapper .bx-pager.bx-default-pager a.active,
	.bx-wrapper .bx-pager.bx-default-pager a:focus {
 	 	background: red;
	}
    .bx-wrapper .bx-controls-auto{
   	display: none;
  	  
    }
    
    div#camera{
	margin: 0 auto;
    min-width: 1900px;
    height: 80px;
    text-align: center;
}
div#brick{
	background: url("${pageContext.request.contextPath}/resources/images/bg_c_bricks.png") repeat-x;
	min-width:1900px;
	height: 450px;
	
}
div#brick a.youtube{
	display:block;
	width:980px; height:450px;
}
div#main_img{
	width:980px;
	height: 450px;
	margin:0 auto;
	position:relative;
}
div#main_img .main_img{
	width:100%;
	height:100%;
}

#right_menu{
		width:115px;
		height:578px;
		border:2px solid red;
		border-radius: 5px;
		padding-left: 5px;
		background: #fdfcf0;
		position:absolute;
		top:-50px;
		right:-150px;
		z-index:3;
		}
	#right_menu div:last-child {
		margin-top:6px;
		
		}

</style>
<div id="camera">
		<a href="#" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/camera.jpg""></a>
	</div>
	<div id="brick">
		<div id="main_img">
			<div class="bxslider">
			<div>
				<a href="https://www.youtube.com/watch?v=BuLZtDqa3_o" class="youtube"><img src="${pageContext.request.contextPath}/resources/images/onepiece1.jpg" class="main_img"></a>
			</div>
			<div>
				<a href=http://section.cgv.co.kr/event/running/EventZone.aspx?idx=1354 class="youtube"><img src="${pageContext.request.contextPath}/resources/images/toy.jpg" class="main_img"></a>
			</div>
			<div>
				<a href="http://www.cgv.co.kr/culture-event/popcorn-store/" class="youtube"><img src="${pageContext.request.contextPath}/resources/images/mainbig_new_2.jpg" class="main_img"></a>
			</div>
		</div>
		<div id="right_menu">
			<div>
				<a href="http://www.cgv.co.kr/theaters/"><img src="${pageContext.request.contextPath}/resources/images/btn_person_theater.gif"></a>
			</div>
			<div>
				<a href="http://www.cgv.co.kr/arthouse/"><img src="${pageContext.request.contextPath}/resources/images/btn_person_arthouse.gif"></a>
			</div>
			<div>
				<a href="http://www.cgv.co.kr/theaters/special/"><img src="${pageContext.request.contextPath}/resources/images/btn_person_special.gif"></a>
			</div>
			<div>
				<a href="http://phototicket.cgv.co.kr/Phototicket/Html/main.aspx"><img src="${pageContext.request.contextPath}/resources/images/btn_person_phototicket.gif"></a>
			</div>
			<div>
				<a href="http://www.cgv.co.kr/user/login/?returnURL=/user/mycgv/reserve/"><img src="${pageContext.request.contextPath}/resources/images/btn_person_ticket.gif"></a>
			</div>
			<div>
				<a href="http://section.cgv.co.kr/discount/Special/discount/Default.aspx"><img src="${pageContext.request.contextPath}/resources/images/btn_person_discount.gif"></a>
			</div>
			<div>
				<a href="#top_image"><img src="${pageContext.request.contextPath}/resources/images/btn_top.png"></a>
			</div>
		</div>
	</div>
</div>
<script>
$(function(){
	  $('.bxslider').bxSlider({
		  	mode: 'fade',
		    slideWidth: 960,
		    auto: true,
		    autoControls: true,
		    stopAutoOnClick: true,
		    pager: true,
		    pause : 2000
	  });
	  $("#top_image a").click(function(){
		  $("#top_image").hide();
	  })
	  
	  $(window).scroll(function(){
			var top = $(this).scrollTop();
			if(top<"220"){
				$("#main_img").css("position","relative");
				$("#right_menu").css("position","absolute");
				$("#right_menu").css("top","-50px");
				$("#right_menu").css("right","-150px");
				
			}else if( top>="220" ){
				var a = (-260+Number(top))+"px";
				$("#right_menu").css("top",a);

			 }
			
		})
	  
	});
</script>
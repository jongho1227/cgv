<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="managerMain.jsp"%>


<style>
#makeContainer{
	width:1920px;
	min-width: 1920px;
}
#insertTheater{
	overflow: hidden;
	width:800px;
	margin:auto;
	margin-top:100px;
	clear: both;	
	
}
table{
	border-collapse: collapse;
	margin: 30px 30px;
	width:700px;
	height:200px;
}
tr, td{
	height:30px;
}
.PM{
	width:20px;
}

</style>
<div id="makeContainer">
	<div id="insertTheater">
		<form action="${pageContext.request.contextPath }/manager/updateRMoviePage" method="post">
			<fieldset>
				<legend>상영영화 수정</legend>
					<table>
						<tr>
							<td>영화 이름</td>
							<td>
								<input type="text" name="mvTitle" readonly="readonly" value="${runtime.mvNumber.mvTitle }" data-runtime="${runtime.mvNumber.mvRuntime }" data-number="${runtime.rtNumber }">
								<input type="hidden" name="rtNumber">
							</td>
						</tr>
					
						<tr class="runtime">
							<td>상영 날짜 및 시간</td>
							<td>
							<input type="text" name="startDate" class="datepicker" autocomplete="off">
							<select name="startHour">
								<c:forEach var="i" begin="0" end="23">
									<option>
										<c:if test="${i<10 }">
											0${i }
										</c:if>
										<c:if test="${i>=10 }">
											${i }
										</c:if>
									</option>
								</c:forEach>
							</select>시 
							<select name="startMinute">
								<c:forEach var="i" begin="0" end="55" step="5">
									<option>
										<c:if test="${i<10 }">
											0${i }
										</c:if>
										<c:if test="${i>=10 }">
											${i }
										</c:if>
									</option>
								</c:forEach>
							</select>분 ~
							<input type="hidden" name="endDate">
							<select name="endHour">
								<c:forEach var="i" begin="0" end="23">
									<option>
										<c:if test="${i<10 }">
											0${i }
										</c:if>
										<c:if test="${i>=10 }">
											${i }
										</c:if>
									</option>
								</c:forEach>
							</select>시 
							<select name="endMinute">
								<c:forEach var="i" begin="0" end="55" step="5">
									<option>
										<c:if test="${i<10 }">
											0${i }
										</c:if>
										<c:if test="${i>=10 }">
											${i }
										</c:if>
									</option>
								</c:forEach>
							</select>분
							<select name="thName">
									<c:forEach var="tname" items="${list }">
										<option>${tname.thName }</option>
									</c:forEach>						
							</select> 
							
							</td>
						</tr>
						
						<tr id="theater">
							<td><button type="submit" id="updateMovie">영화 수정</button></td>
							<td><button type="button" id="cancel">수정 취소</button></td>
						</tr>
					</table>
				</fieldset>		
			</form>
	</div>
</div>

<script>
var preDate = new Date();
var b = preDate.getTime(); // 현재
var openDate = new Date(${open});
var a = openDate.getTime(); // 개봉일

var diffDay = 0;
if((a-b)>0){
	 diffDay = Math.ceil((a-b)/(1000*60*60*24));
}


 
 $("input[name='rtNumber']").val($("input[name='mvTitle']").attr("data-number"));
 
 $(".datepicker").datepicker({
	 minDate:diffDay
 });
 
 var sDate = new Date(${start});
 var ssDate = sDate.getFullYear()+"-"+("00"+(sDate.getMonth()+1)).slice(-2)+"-"+("00"+sDate.getDate()).slice(-2);
 var sHour = ("00"+sDate.getHours()).slice(-2);
 var sMinute = ("00"+sDate.getMinutes()).slice(-2);
 var eDate = new Date(${end});
 var eeDate = eDate.getFullYear()+"-"+("00"+(eDate.getMonth()+1)).slice(-2)+"-"+("00"+eDate.getDate()).slice(-2);
 var eHour = ("00"+eDate.getHours()).slice(-2);
 var eMinute = ("00"+eDate.getMinutes()).slice(-2);
 $("input[name='startDate']").val(ssDate);
 $("input[name='endDate']").val(eeDate);
 $("select[name='startHour']").val(sHour);
 $("select[name='startMinute']").val(sMinute);
 $("select[name='endHour']").val(eHour);
 $("select[name='endMinute']").val(eMinute);
 $("select[name='thName']").val('${runtime.thName.thName}');
 
 $("#updateMovie").click(function(){
	var a = confirm("영화를 수정하시겠습니까?");
	if(a==false){
		return false;
	}
}) 
	
$("#cancel").click(function(){
	var a = confirm("영화 수정을 취소하시겠습니까?");
	if(a==true){
		location.href = "${pageContext.request.contextPath}/manager/updateRMovie";
	}else{
		return false;
	}
	
})	

$(document).on("change", "input[name='startDate']", function(){
	var date = $(this).val();
	$(this).parent().find("input[name='endDate']").val(date);
})

//마감시간 자동으로~
$(document).on("change", "select[name='startHour']", function(){
	$(this).parent().find("input[name='endDate']").val($(this).parent().find("input[name='startDate']").val());
	
	var dateString = $(this).parent().find("input[name='endDate']").val();
	
	
	var runtime = Number($("input[name='mvTitle']").attr("data-runtime"))+30;
	
	var hour = Math.floor(runtime/60);
	var minute = runtime%60;
	
	if(minute%5!=0){
		minute+=(5-minute%5);
	}
	
	var endHour = Number($(this).val()) + hour;
	var endMinute = Number($(this).next().val()) + minute;
	
	if(endHour>=24){
		endHour-=24;
		var endDate = new Date(dateString);
		endDate.setDate(endDate.getDate()+1);
		var sDate = endDate.getFullYear()+"-"+("00"+(endDate.getMonth()+1)).slice(-2)+"-"+("00"+endDate.getDate()).slice(-2);
		$(this).parent().find("input[name='endDate']").val(sDate);
	}
	
	
	if(endMinute>=60){
		endMinute-=60;
		endHour+=1;
	}
	if(endHour<10){
		endHour="0"+endHour;
	}
	if(endMinute<10){
		endMinute="0"+endMinute;
	}
	
	$(this).parent().find("select[name='endHour']").val(endHour);
	$(this).parent().find("select[name='endMinute']").val(endMinute);
})

$(document).on("change", "select[name='startMinute']", function(){
	$(this).parent().find("input[name='endDate']").val($(this).parent().find("input[name='startDate']").val());
	
	var dateString = $(this).parent().find("input[name='endDate']").val();
	
	var runtime = Number($("input[name='mvTitle']").attr("data-runtime"))+30;
	var hour = Math.floor(runtime/60);
	
	var minute = runtime%60;
	
	if(minute%5!=0){
		minute+=(5-minute%5);
	}
	
	var endHour = Number($(this).parent().find("select[name='startHour']").val()) + hour;
	var endMinute = Number($(this).val()) + minute;
	
	if(endHour>=24){
		endHour-=24;
		
		var endDate = new Date(dateString);
		endDate.setDate(endDate.getDate()+1);
		var sDate = endDate.getFullYear()+"-"+("00"+(endDate.getMonth()+1)).slice(-2)+"-"+("00"+endDate.getDate()).slice(-2);
		$(this).parent().find("input[name='endDate']").val(sDate);
	}
	
	if(endMinute>=60){
		endMinute-=60;
		endHour+=1;
	}                
	if(endHour<10){
		endHour="0"+endHour;
	}
	if(endMinute<10){
		endMinute="0"+endMinute;
	}
	$(this).parent().find("select[name='endHour']").val(endHour);
	$(this).parent().find("select[name='endMinute']").val(endMinute);
})



</script>





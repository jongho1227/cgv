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
		<form action="insertRuntimeMovie" method="post">
			<fieldset>
				<legend>상영영화 등록</legend>
					<table>
						<tr>
							<td>영화 이름</td>
							<td>
								<select name="mvTitle">
									<c:forEach var="mv" items="${mList }" varStatus="i">
										<option data-time="${mv.mvRuntime }" data-number="${mv.mvNumber }"
										        data-start="${slist[i.index] }">${mv.mvTitle }</option>
									</c:forEach>
								</select>
								<input type="hidden" name="mvNumber">
							</td>
						</tr>
						<tr>
							<td>개봉일</td>
							<td><input type="text" readonly="readonly" id="st"></td>
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
							<button type="button" id="plus" class="PM">+</button>
							</td>
						</tr>
						
						<tr id="theater">
							<td><button type="submit" id="addMovie">영화 등록</button></td>
							<td><button type="button" id="cancel">등록 취소</button></td>
						</tr>
					</table>
				</fieldset>		
			</form>
	</div>
</div>

<script>
 
 $("input[name='mvNumber']").val($("select[name='mvTitle'] option:selected").attr("data-number"));
 var preDate = new Date();
 var b = preDate.getTime(); // 현재시간.
 var a = Number($("select[name='mvTitle']").find("option:selected").attr("data-start")); // 개봉일
 var stDate = new Date(a);
 var sttDate = stDate.getFullYear()+"-"+("00"+(stDate.getMonth()+1)).slice(-2)+"-"+("00"+stDate.getDate()).slice(-2);
 $("#st").val(sttDate);
 var diffDay = 0;
 if((a-b)>0){
	 diffDay = Math.ceil((a-b)/(1000*60*60*24));
 }
 
 $(document).on("change", "select[name='mvTitle']", function(){
		var mvNumber = $("select[name='mvTitle'] option:selected").attr("data-number");
		$("input[name='mvNumber']").val(mvNumber);
		 var c = Number($("select[name='mvTitle']").find("option:selected").attr("data-start"));//개봉일
		 var ctDate = new Date(c);
		 var cttDate = ctDate.getFullYear()+"-"+("00"+(ctDate.getMonth()+1)).slice(-2)+"-"+("00"+ctDate.getDate()).slice(-2);
		 $("#st").val(cttDate);
		 diffDay = 0;
		 if((c-b)>0){
			 diffDay = Math.ceil((c-b)/(1000*60*60*24));
		 }
		 $(document).find("input[name=startDate]").removeClass('hasDatepicker').datepicker({
			 minDate:diffDay
		 });  
	})
 
 $(".datepicker").datepicker({
	  minDate:diffDay
 });
 

 
 $("#addMovie").click(function(){
	var a = confirm("영화를 등록하시겠습니까?");
	if(a==false){
		resetInput();
		return false;
	}
}) 
	
$("#cancel").click(function(){
	var a = confirm("영화 등록을 취소하시겠습니까?");
	if(a==true){
		resetInput();
	}else{
		return false;
	}
	
})	

 $("#plus").click(function(){
	 if($(".runtime").length>8){
		 alert("더 이상 추가 할 수 없습니다.");
		 return;
	 }
	 var thNameArr = [
		 <c:forEach var="tname" items="${list }">
			"${tname.thName }",
		</c:forEach>
	 ];
	 var $tr = $("<tr class='runtime'>");
	 var $td1 = $("<td>");
	 var $td2 = $("<td>");
	 var $inputD = $('<input type="text" name="startDate" autocomplete="off">');
	 var $inputD2 = $('<input type="hidden" name="endDate">');
	 var $select1 = $('<select name="startHour">');
	 var $select2 = $('<select name="startMinute">');
	 var $select3 = $('<select name="endHour">');
	 var $select4 = $('<select name="endMinute">');
	 var $select5 = $('<select name="thName">');
	 var $button = $('<button type="button" class="minus PM">');
	 
	 for(var i=0; i<24; i++){
		 var $optionH = $("<option>");
		 var $optionH2 = $("<option>");
		 if(i<10){
			 $optionH.html("0"+i);
			 $optionH2.html("0"+i);
		 }else{
			 $optionH.html(i);
			 $optionH2.html(i);
		 }
		 
		 $select1.append($optionH);
		 $select3.append($optionH2);
	 }
	 for(var i=0; i<=55; i+=5){
		 var $optionM = $("<option>");
		 var $optionM2 = $("<option>");
		 if(i<10){
			 $optionM.html("0"+i);
			 $optionM2.html("0"+i);
		 }else{
			 $optionM.html(i);
			 $optionM2.html(i);
		 }
		 $select2.append($optionM);
		 $select4.append($optionM2);
	 }
	 for(var i=0; i<thNameArr.length; i++){
		 var $option = $("<option>");
		 $option.html(thNameArr[i]);
		 $select5.append($option);
	 }
	 
	 $button.html("-");
	 $td2.append($inputD).append($select1).append($select2).append($inputD2).append($select3).append($select4).append($select5).append($button);
	 
	 $tr.append($td1).append($td2);
	 
	 $("#theater").before($tr);
	 $select1.after("<span>시 </span>");
	 $select2.after("<span>분 ~ </span>");
	 $select3.after("<span>시 </span>");
	 $select4.after("<span>분 </span>");
	 $select5.after("<span> </span>");
	 $inputD.after("<span> </span>");
	 $(document).find("input[name=startDate]").removeClass('hasDatepicker').datepicker({
		 minDate:diffDay
	 });   
	
}) 

$(document).on("click",".minus", function(){
	$(this).parent().parent().remove();
})
$(document).on("change", "input[name='startDate']", function(){
	var date = $(this).val();
	$(this).parent().find("input[name='endDate']").val(date);
})




//마감시간 자동으로~
$(document).on("change", "select[name='startHour']", function(){
	$(this).parent().find("input[name='endDate']").val($(this).parent().find("input[name='startDate']").val());
	
	var dateString = $(this).parent().find("input[name='endDate']").val();
	
	
	
	var runtime = Number($("select[name='mvTitle'] option:selected").attr("data-time"))+30;
	
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
	
	var runtime = Number($("select[name='mvTitle'] option:selected").attr("data-time"))+30;
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


function resetInput(){
	 $("input").val("");
	 $("select option:eq(0)").prop("selected", true);
}
 
 <c:if test="${result=='success' }">
	alert("영화를 등록하였습니다.");
</c:if> 
<c:if test="${result=='duplicate' }">
alert("겹치는 시간을 제외하고 등록함.");
</c:if> 
</script>





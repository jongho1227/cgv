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
	width:1100px;
	margin: auto;
	margin-top:100px;
	clear: both;	
	
}
#t1{
	border-collapse: collapse;
	margin: 30px 30px;
	width:400px;
	height:40px;
}
#runTable{
	border-collapse: collapse;
	width: 1050px;
	margin: 30px 30px;
	text-align: center;
	table-layout: fixed;
}
#runTable th, #runTable td, #runTable tr{
	border:1px solid black;
}
.poster, .movieName, .update{
	width:90px;
}
.poster img{
	width:85px;
	height:100px;
}
#runTable td{
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}
.thName{
	width:60px;                
}
.summary{
	width:250px;
}
.start, .end{
	width:160px;
}
.runtime{
	width:80px;
}
.agelimit{
	width:70px;
}
</style>
<div id="makeContainer">
	<div id="insertTheater">
	<form action="updateMovie" method="post">
		<fieldset>
				<legend>영화 수정</legend>
					<table id="t1">
						<tr>
							<td>상영 영화목록</td>
							<td>
								<select name="mvTitle">
									<c:forEach var="mv" items="${mList }">
										<option data-number="${mv.mvNumber }">${mv.mvTitle }</option>
									</c:forEach>
								</select>
								<input type="hidden" name="mvNumber">
							</td>
						</tr>
					</table>
					<table id="runTable">
						<tr>
							<th class="poster">포스터</th>
							<th class="movieName">영화제목</th>	
							<th class="thName">상영관</th>	
							<th class="summary">영화줄거리</th>	
							<th class="start">상영시작시간</th>
							<th class="end">상영종료시간</th>
							<th class="runtime">상영시간</th>	
							<th class="agelimit">연령등급</th>
							<th class="update">수정/삭제</th>	
						</tr>
						<c:forEach var="rt" items="${rList }">
							<tr data-runtime="${rt.rtNumber }">
								<td class="poster"><img src="displayFile?filename=${rt.mvNumber.mvImg }"></td>
								<td class="movieName">${rt.rtName }</td>
								<td class="thName">${rt.thName.thName }</td>
								<td class="summary">${rt.mvNumber.mvSummary }</td>
								<td class="start"><fmt:formatDate value="${rt.thStart }" pattern="yyyy-MM-dd kk:mm"/></td>
								<td class="end"><fmt:formatDate value="${rt.thEnd }" pattern="yyyy-MM-dd kk:mm"/></td>
								<td class="runtime">${rt.mvNumber.mvRuntime }분</td>
								<td class="agelimit">${rt.mvNumber.mvAgeLimit }</td>
								<td class="update"><button type="button" class="updateMovie">수정</button> <button type="button" class="delMovie">삭제</button></td>	
							</tr>
						</c:forEach> 
					</table>
		</fieldset>	
	</form>	
	</div>
</div>

<script>



$("input[name='mvNumber']").val($("select[name='mvTitle'] option:selected").attr("data-number"));

$(document).on("change", "select[name='mvTitle']", function(){
	var mvNumber = $("select[name='mvTitle'] option:selected").attr("data-number");
	var mvTitle = $(this).val();
	$("input[name='mvNumber']").val(mvNumber);
	$.ajax({
		url : "updateRMovie",
		type : "post",
		data : {mvNumber:mvNumber, mvTitle:mvTitle},
		dataType : "json",
		success : function(res){
			console.log(res);
			$("#runTable td").parent("tr").remove();
			$(res).each(function(i,obj){
				var sDate = new Date(obj.thStart);
				var eDate = new Date(obj.thEnd);
				
				var ssDate = sDate.getFullYear()+"-"+("00"+(sDate.getMonth()+1)).slice(-2)+"-"+("00"+sDate.getDate()).slice(-2)
							+" "+("00"+sDate.getHours()).slice(-2)+":"+("00"+sDate.getMinutes()).slice(-2);
				var eeDate = eDate.getFullYear()+"-"+("00"+(eDate.getMonth()+1)).slice(-2)+"-"+("00"+eDate.getDate()).slice(-2)
							+" "+("00"+eDate.getHours()).slice(-2)+":"+("00"+eDate.getMinutes()).slice(-2);			
				
				var $tr = $("<tr>");
				var $tdP = $('<td class="poster">');
				var $tdM = $('<td class="movieName">');
				var $tdT = $('<td class="thName">');
				var $tdS = $('<td class="summary">');
				var $tdST = $('<td class="start">');
				var $tdET = $('<td class="end">');
				var $tdR = $('<td class="runtime">');
				var $tdA = $('<td class="agelimit">');
				var $tdU = $('<td class="update">');
				$tr.attr("data-runtime",obj.rtNumber);
				$tdP.html('<img src="displayFile?filename='+obj.mvNumber.mvImg+'">'); 
				$tdM.html(obj.rtName);
				$tdT.html(obj.thName.thName);
				$tdS.html(obj.mvNumber.mvSummary);
			    $tdST.html(ssDate);
				$tdET.html(eeDate); 
				$tdR.html(obj.mvNumber.mvRuntime+"분");
				$tdA.html(obj.mvNumber.mvAgeLimit);
				$tdU.html('<button type="button" class="updateMovie">수정</button> <button type="button" class="delMovie">삭제</button>');
				
				$tr.append($tdP).append($tdM).append($tdT).append($tdS).append($tdST).append($tdET).append($tdR).append($tdA).append($tdU);
				$("#runTable").append($tr); 
			})
		}
	})
})

$(document).on("click",".updateMovie", function(){
	var rtNumber = $(this).parent().parent().attr("data-runtime");
	location.href = "${pageContext.request.contextPath}/manager/updateRMoviePage/"+rtNumber;
})

$(document).on("click",".delMovie", function(){
	
})

<c:if test="${result=='success' }">
	alert("영화를 수정하였습니다.");
 </c:if>
 <c:if test="${result=='duplicate' }">
	alert("해당 시간에 상영중인 영화가 있습니다.");
</c:if>
</script>





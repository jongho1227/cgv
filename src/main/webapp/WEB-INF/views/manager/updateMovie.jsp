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
#height100{
	height:105px;
}

</style>
<div id="makeContainer">
	<div id="insertTheater">
		<form action="${pageContext.request.contextPath }/manager/updateMovie" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>영화 수정</legend>
					<table>
						<tr>
							<td>영화 이름</td>
							<td>
								<select name="mvTitle">
									<option>--영화선택--</option>
									<c:forEach var="mv" items="${mList }" varStatus="i">
										<option data-number="${mv.mvNumber }" data-time="${mv.mvRuntime }"
												data-summary="${mv.mvSummary }" data-img="${mv.mvImg }" data-age="${mv.mvAgeLimit }"
												data-start="${list[i.index] }" data-genre="${mv.mvGenre}">${mv.mvTitle }</option>
									</c:forEach>
								</select>
								<input type="hidden" name="mvNumber">
								<input type="hidden" name="imgs">
							</td>
						</tr>
						<tr>
							<td>개봉일</td>
							<td><input type="text" name="mvStarts" class="datepicker" autocomplete="off"></td>
						</tr>
						<tr>
							<td>영화 장르</td>
							<td><input type="text" name="mvGenre"></td>
						</tr>
						<tr>
							<td>상영 시간</td>
							<td><input type="text" name="mvRuntime"> 분</td>
							
						</tr>
						<tr id="height100">
							<td>현재포스터</td>
							<td><img id="preImg"></td>
						</tr>
						<tr>
							<td>수정포스터</td>
							<td><input type="file" name="mvImgs"></td>
						</tr>
						<tr>
							<td>영화줄거리</td>
							<td><textarea rows="10" cols="60" name="mvSummary"></textarea></td>
						</tr>
						<tr>
							<td>연령제한</td>
							<td>
								<select name="mvAgeLimit">
									<option>전체</option>
									<option>12</option>
									<option>15</option>
									<option>청불</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><button type="submit" id="updateMovie">영화 수정</button></td>
							<td><button type="button" id="cancel">수정 취소</button></td>
						</tr>
					</table>
				</fieldset>		
			</form>
	</div>
</div>



<script>
$(".datepicker").datepicker({
	minDate:null
});

 $("#updateMovie").click(function(){
	var a = confirm("영화를 수정하시겠습니까?");
	if(a==false){
		resetInput();
		return false;
	}
}) 
	
$("#cancel").click(function(){
	var a = confirm("영화 수정을 취소하시겠습니까?");
	if(a==true){
		resetInput();
	}else{
		return false;
	}
	
})	


$(document).on("change", "select[name='mvTitle']", function(){
	var name = $(this).val();
	if(name=="--영화선택--"){
		resetInput();
		return;
	}
	$("input[name='mvNumber']").val($(this).find("option:selected").attr("data-number"));
	$("input[name='imgs']").val($(this).find("option:selected").attr("data-img"));
	$("input[name='mvRuntime']").val($(this).find("option:selected").attr("data-time"));
	$("textarea[name='mvSummary']").val($(this).find("option:selected").attr("data-summary"));
	var a = Number($(this).find("option:selected").attr("data-start"));
	var date = new Date(a);
	var start = date.getFullYear()+"-"+("00"+(date.getMonth()+1)).slice(-2)+"-"+("00"+date.getDate()).slice(-2);
	$("input[name='mvStarts']").val(start);
	$("input[name='mvGenre']").val($(this).find("option:selected").attr("data-genre"));
	$("select[name='mvAgeLimit']").val($(this).find("option:selected").attr("data-age"));
	$("#preImg").attr("src", "displayFile?filename="+$(this).find("option:selected").attr("data-img"));
})

function resetInput(){
	$("input").val("");
	$("textarea").val("");
	$("select[name='mvAgeLimit'] option:eq(0)").prop("selected", true);
}
 
 <c:if test="${result=='success' }">
	alert("영화를 수정하였습니다.");
</c:if>
</script>





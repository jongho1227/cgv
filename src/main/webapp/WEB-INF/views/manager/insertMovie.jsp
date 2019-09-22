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
		<form action="insertMovie" method="post" enctype="multipart/form-data" id="f1">
			<fieldset>
				<legend>영화 등록</legend>
					<table>
						<tr>
							<td>영화 이름</td>
							<td><input type="text" name="mvTitle" autocomplete="off"></td>
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
						<tr>
							<td>영화포스터</td>
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
							<td><button type="submit" id="addMovie">영화 등록</button></td>
							<td><button type="button" id="cancel">등록 취소</button></td>
						</tr>
					</table>
				</fieldset>		
			</form>
	</div>
</div>



<script>
$(".datepicker").datepicker();

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

function resetInput(){
	$("input").val("");
	$("textarea").val("");
	$("select option:eq(0)").prop("selected", true);
}
 <c:if test="${result=='success' }">
	alert("영화를 등록하였습니다.");
 </c:if>
</script>





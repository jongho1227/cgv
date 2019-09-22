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
	width:400px;
	height:200px;
}
tr, td{
	
}


</style>
<div id="makeContainer">
	<div id="insertTheater">
	<form action="deleteMovie" method="post">
		<fieldset>
				<legend>영화 삭제</legend>
					<table>
						<tr>
							<td>상영중 영화</td>
							<td>
								<select name="mvTitle">
									<c:forEach var="mv" items="${mList }">
										<option data-number="${mv.mvNumber }">${mv.mvTitle }</option>
									</c:forEach>
								</select>
								<input type="hidden" name="mvNumber">
							</td>
						</tr>
						<tr>
							<td colspan="2"><button type="submit" id="delTheater">상영 종료</button></td>
						</tr>
					</table>
		</fieldset>	
	</form>	
	</div>
</div>

<script>
$("input[name='mvNumber']").val($("select[name='mvTitle'] option:selected").attr("data-number"));

$(document).on("change", "select[name='mvTitle']", function(){
	var mvNumber = $("select[name='mvTitle'] option:selected").attr("data-number");
	$("input[name='mvNumber']").val(mvNumber);
})

$("#delTheater").click(function(){
	var a = confirm("영화 상영을 종료하시겠습니까?");
	if(a==false){
		return false;
	}
})

<c:if test="${result=='success' }">
	alert("상영을 종료하였습니다.");
 </c:if>
 <c:if test="${result=='fail' }">
	alert("상영중인 영화가 있습니다.");
</c:if>
</script>





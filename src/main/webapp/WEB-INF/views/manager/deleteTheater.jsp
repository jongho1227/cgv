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
		
			<fieldset>
				<legend>영화관 삭제</legend>
					<table>
						<tr>
							<td>영화관 이름</td>
							<td>
								<select name="thName">
									<c:forEach var="tname" items="${list }">
										<option>${tname.thName }</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="2"><button type="button" id="delTheater">영화관 삭제</button></td>
						</tr>
					</table>
				</fieldset>		
		
	</div>
</div>

<script>
	$("#delTheater").click(function(){
		var a = confirm("영화관을 삭제하시겠습니까?");
		if(a==false){
			return false;
		}
		var name = $("select").val();
		$.ajax({
			url :"deleteTheater",
			type : "post",
			data : {name:name},
			dataType : "text",
			success : function(res){
				console.log(res);
				if(res=="success"){
					alert("영화관을 삭제 하였습니다.");
					location.href="deleteTheater";
				}else{
					alert("영화관 삭제 실패!");
				}
			}
		})
		
		
	})

</script>





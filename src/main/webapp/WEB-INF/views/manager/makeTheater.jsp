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
				<legend>영화관 등록</legend>
					<table>
						<tr>
							<td>영화관 이름</td>
							<td><input type="text" name="thName"></td>
						</tr>
						<tr>
							<td>영화관 종류</td>
							<td>
								<select name="thKinds">
									<option>2D</option>
									<option>3D</option>
									<option>4D</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><button type="button" id="addTheater">영화관 등록</button></td>
							<td><button type="button" id="cancel">등록 취소</button></td>
						</tr>
					</table>
				</fieldset>		
		
	</div>
</div>

<script>

$("#addTheater").click(function(){
	var a = confirm("영화관을 등록하시겠습니까?");
	if(a==false){
		$("input[name='thName']").val("");
		$("select option:eq(0)").prop("selected", true);
		return false;
	}
	var thName = $("input[name='thName']").val();
	var thKinds = $("select").val();
	$.ajax({
		url : "makeTheater",
		type : "post",
		data : {thName:thName, thKinds:thKinds},
		dataType : "text",
		success : function(res){
			console.log(res);
			if(res=="success"){
				alert("영화관을 등록하였습니다.");
				$("input[name='thName']").val("");
				$("select option:eq(0)").prop("selected", true);
			}else if(res=="exist"){
				var a = confirm("삭제했던 영화관이 존재합니다. 영화관을 복구하시겠습니까?");
				
				if(a==true){
					$.ajax({
						url : "makeTheater",
						type : "put",
						data : JSON.stringify({thName:thName, thKinds:thKinds}), // requestbody로 받을때 한글안깨짐.
						headers:{
							"Content-Type":"application/json"
						},
						dataType : "text",
						success : function(res){
							console.log(res);
							if(res=="success"){
								alert("영화관을 복구하였습니다.");
								$("input[name='thName']").val("");
								$("select option:eq(0)").prop("selected", true);
							}else{
								alert("등록 실패!!");
							}
						}
					})
				}else{
					return;
				}
			}else{
				alert("등록 실패!!");
			}
		}
	})
})
	
$("#cancel").click(function(){
	var a = confirm("영화관 등록을 취소하시겠습니까?");
	if(a==true){
		$("input[name='thName']").val("");
		$("select option:eq(0)").prop("selected", true);
	}else{
		return false;
	}
	
})	
</script>





<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<style>

	#anchor{
		width: 100%;
	    background-color: #f1f0e5;
	    border-bottom: 1px solid #cacac0;
	    color: #666;
	    font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
	    font-weight: 300;
	    height:25px;
	}
	#anchor ul{
		list-style: none;
		width:1060px;
		margin:0 auto;
	}
	#anchor ul li{
		float: left;
		line-height: 25px;
		margin-left: 12px;
	    padding-left: 20px;
	    background: url(${pageContext.request.contextPath}/resources/images/join/ico_arrow.png) no-repeat 0 50%;
	    font-size: 12px;
	    vertical-align: baseline;
		
	}
	#anchor ul li:first-child {
		background: none;
	}
	#anchor ul li:first-child img{
		margin-top:4px;
	}
	#anchor ul li.last{
		color: #222;
	    font-size: 12px;
	    text-decoration: underline;
	    font-weight: 500;
	}
	#loginContainer{
		width:1060px;
		margin:20px auto;
	}
	#topContainer{
		margin-top: 40px;
	}
	#topContainer h1, #topContainer p{
		margin:20px auto;
		text-align: center;
	}
	#topContainer h1{
		font-size: 48px;
	}
	#topContainer p{
		color:#555;
		font-size: 16px;
	}
	.table_header{
		overflow: hidden;
		margin-bottom:15px;
	}
	.table_header h3{
		color: #222;
    	font-weight: normal;
    	font-size: 22px;
    	float: left;
	}
	.table_header p{
		padding-left:15px;
		font-size: 12px;
		background: url("${pageContext.request.contextPath}/resources/images/join/ico_mandatory.png") no-repeat;
		background-position: 0 3px;
		float: right;
	}
	#joinTable{
		width:1060px;
		border-collapse: collapse;
		border-top:1px solid black;
		font-family: Arial, nbgr, '나눔바른고딕', '돋음';
	}
	.mandatory{
		width:204px;
		background-image: url("${pageContext.request.contextPath}/resources/images/join/ico_mandatory.png");
		background-repeat: no-repeat;
		background-position: 20px 27px;
		padding-left: 40px !important;
		padding-top: 22px;
	    background-color: #f8f8f8;
	    color: #222;
	    text-align: left;
	    padding: 23px 20px 21px 20px;
	    border-bottom: 1px solid #ddd;
	    vertical-align: top;
	    color: #222;
	    font-size: 14px;
	    
	}
	#joinTable .info{
		padding: 15px 20px;
		background-color: #fff;
		border-bottom: 1px solid #ddd;
		color: #555;
	    font-size: 14px;
	    line-height: 24px;
	}
	#joinTable input[type=text], #joinTable select, #joinTable input[type=password]{
		width:218px;
		height:32px;
		padding: 0 15px;
	    border: 1px solid #ddd;
	    color: #888;
	    font-size: 14px;
	    line-height: 32px;
	}
	#joinTable select{
		width:250px !important;
	}
	#dupCheck, #btnContainer input{
		margin: 0 3px;
		padding: 0 15px;
		border: 1px solid #333;
	    border-radius: 3px;
	    cursor: pointer;
	    font-size: 14px;
	}
	#dupCheck{
		min-width: 78px;
	    height: 34px;
	    line-height: 30px;
	    background-color: #333;
    	color: #fff;
    	margin-left:10px;
	}
	
	.disnone{
		display: none;
		color:red;
	}
	#btnContainer{
		text-align: center;
	}
	#btnContainer input{
		min-width: 160px;
	    height: 40px;
	    margin: 20px 10px;
	}
	#btnContainer input[type=submit]{
		background-color: #333;
    	color: #fff;
	}
	#btnContainer input[type=reset]{
		background-color: #fff;
    	color: #333;
	}
	.explain{
		margin-top: 10px;
	    color: #888;
	    font-size: 12px;
	    line-height: 1.5;
	}
</style>
<div id="anchor">
	<ul>
		<li>
			<a href="/cgv"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a>
		</li>
		<li>
			<a href="/cgv/member/login">회원 서비스</a>
		</li>
		<li class="last">
			회원가입
		</li>
	</ul>
</div>
<div id="loginContainer">
	<div id="topContainer">
		<h1>회원가입</h1>
		<p>라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의 카드로 즐기세요~</p>
	</div>
	
	
	<div class="table_header">
		<h3>기본정보</h3>
		<p>표시는 필수 입력 항목입니다.</p>
	</div>
	
	<form action="${pageContext.request.contextPath}/member/join" method="post">
		<table id="joinTable">
			<tr>
				<td class="mandatory">이름</td>
				<td class="info"><input type="text" name="mbName" placeholder="이름을 입력해주세요."></td>
			</tr>
			<tr>
				<td class="mandatory">아이디</td>
				<td class="info">
					<input type="text" name="mbId" placeholder="아이디를 입력해주세요."> 
					<button type="button" id="dupCheck">중복확인</button><br>
					<span id="dup" class="disnone">아이디가 중복되었습니다.</span>
					<span id="useable" class="disnone">사용할 수 있는 아이디입니다.</span>
					<span id="id" class="disnone">아이디를 조건에 맞게 입력하세요.</span>
					<p class="explain">영문,숫자조합 6~15자리로 입력하세요.</p>
				</td>
			</tr>
			<tr>
				<td class="mandatory">비밀번호</td>
				<td class="info">
					<input type="password" name="mbPassword" placeholder="비밀번호를 입력해주세요."><br>
					<span id="pass" class="disnone">비밀번호를 조건에 맞게 입력하세요.</span>
					<p class="explain">
						영문자,숫자,특수문자 조합하여 8~12자리, 아이디와 4자리이상 동일, 반복 문자, 반복 숫자 불가<br>
						사용 가능 특수 문자 : !"@#$%^&*()_-+=;:',./&lt; &gt;?[]{}~`|
					</p>
				</td>
			</tr>
			<tr>
				<td class="mandatory">비밀번호 확인</td>
				<td class="info">
				<input type="password" name="mbPasswordCheck" placeholder="비밀번호를 재 입력해주세요."><br>
				<span id="check" class="disnone">비밀번호가 다릅니다.</span>
				</td>
			</tr>
			<tr>
				<td class="mandatory">생년월일</td>
				<td class="info">
					<input type="text" name="mbBirth" placeholder="ex)19881227"><br>
					<span id="birth" class="disnone">8자리 숫자만 입력가능합니다.</span>
					<p class="explain">설정하신 생일 기준으로 15일 전 생일쿠폰이 발행됩니다.</p>
				</td>
			</tr>
			<tr>
				<td class="mandatory">휴대전화</td>
				<td class="info">
					<input type="text" name="mbPhone" placeholder="-없이 입력하세요."><br>
					<span id="phone" class="disnone">10~12자리 숫자만 입력가능합니다.</span>
					<p class="explain">주문 및 배송, 쿠폰, 이벤트 정보 등을 제공 받으실 수 있습니다.</p>
				</td>
			</tr>
			<tr>
				<td class="mandatory">이메일</td>
				<td class="info">
					<input type="text" name="mbEmail" placeholder="ex)asdf@naver.com"><br>
					<span id="email" class="disnone">이메일형식에 맞게 입력하세요.</span>
					<p class="explain">이메일 주소 입력 시 사용 가능 특수 문자-._</p>
				</td>
			</tr>
			<tr>
				<td class="mandatory">비밀번호 찾기 질문</td>
				<td class="info">
					<select name="mbPassQuestion">
						<option>출신 초등학교 이름은?</option>
						<option>최대로 먹을 수 있는 햄버거 갯수는?</option>
						<option>자신이 두번째로 존경하는 인물은?</option>
						<option>자신의 인생 좌우명은?</option>
						<option>첫사랑의 이름은?</option>
						<option>다시 태어나면 되고 싶은 것은?</option>
						<option>가장 기억에 남는 선생님 성함은?</option>
						<option>가장 오래 산 지역은?</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="mandatory">비밀번호 찾기 질문</td>
				<td class="info">
					<input type="text" name="mbPassAnswer">
				</td>
			</tr>
		</table>
		<div id="btnContainer">
			<input type="submit" value="등록"> <input type="reset" value="취소">
		</div>
	</form>
</div>
<script>
var check = 0;
$("#dupCheck").click(function(){
	$("#dup").css("display","none");
	$("#useable").css("display","none");
	$.ajax({
		url : "${pageContext.request.contextPath}/member/check",
		type : "get",
		data : {"mbId" : $("input[name='mbId']").val()},
		dataType : "text",
		success : function(data){
			console.log(data);
			$("#id").css("display","none");
			var id = $("input[name='mbId']").val();
			var reg = /^[a-z0-9]{6,15}$/i;
			var result = reg.test(id);
			if(result==false){
				$("#id").css("display","inline");
				return false;
			}
			if(result==true && data!="success"){
			$("#dup").css("display","inline");
			}else{
			$("#useable").css("display","inline");
			check++;
			}
			
		}
	})
	
})

$("form").submit(function(){
	$("#id").css("display","none");
	$("#name").css("display","none");
	$("#pass").css("display","none");
	$("#birth").css("display","none");
	$("#phone").css("display","none");
	$("#email").css("display","none");
	//이름 체크
	
	var name = $("input[name='mbName']").val();
	var reg1 = /^[가-힣]{2,5}$/;
	var result1 = reg1.test(name);
	if(result1==false){
		$("#name").css("display","inline");
		return false;
	}
	
	// 아이디 체크
	var id = $("input[name='mbId']").val();
	var reg = /^[a-z0-9]{6,15}$/i;
	var result = reg.test(id);
	if(result==false){
		$("#id").css("display","inline");
		return false;
	}
	
	if(check==0){
		alert("아이디 중복체크를 하세요");
		return false;
	}
	//비밀번호 체크
	var pass = $("input[name='mbPassword']").val();
	var reg2 = /^[\w\W]{8,12}$/i;
	var result2 = reg2.test(pass);
	
	var tmp = ""; // 비번 아이디 4자리 이상 같지 않게
	var cnt = 0;
	for(var i=0; i<id.length-3; i++){
		tmp = id.charAt(i)+id.charAt(i+1)+id.charAt(i+2);
		if(pass.indexOf(tmp)>-1){
			cnt++;
		}
	}
	if(cnt>0){
		$("#pass").css("display","inline");
		return false;
	}
	
	tmp = "";
	cnt = 0; // 반복된 문자 및 숫자 막음
	for(var i=0; i<pass.length-1; i++){
		tmp = pass.charAt(i);
		if(tmp==pass.charAt(i+1)){
			cnt++;
		}
	}
	if(cnt>0){
		$("#pass").css("display","inline");
		return false;
	}
	if(result2==false){
		$("#pass").css("display","inline");
		return false;
	}
	if( $("input[name='mbPassword']").val() != $("input[name='mbPasswordCheck']").val()){
		$("#check").css("display","inline");
		return false;
	}
	// 생년월일 체크
	var birth = $("input[name='mbBirth']").val();
	var reg3 = /^[0-9]{8}$/;
	var result3 = reg3.test(birth);
	if(result3==false){
		$("#birth").css("display","inline");
		return false;
	}
	//전화번호 체크
	var phone = $("input[name='mbPhone']").val();
	var reg4 = /^[0-9]{10,12}$/;
	var result4 = reg4.test(phone);
	if(result4==false){
		$("#phone").css("display","inline");
		return false;
	}
	
	//이메일 체크
	var email = $("input[name='mbEmail']").val();
	var reg5 = /^\w[\w-.]{5,20}@[a-zA-Z]{2,10}\.[a-zA-Z]{2,3}\.?[a-zA-Z]{0,2}$/;
	var result5 = reg5.test(email);
	if(result5==false){
		$("#email").css("display","inline");
		return false;
	}
	
	//공백체크
	if( $("#joinTable input[type='text']").val()=="" || $("#joinTable input[type='password']").val()==""){
		
		alert("필수항목은 반드시 기재하여야 합니다.");
		return false;
	}
})
</script>
<%@ include file="../include/footer.jsp"%>





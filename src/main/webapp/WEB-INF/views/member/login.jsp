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
	width:980px;
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
	width:600px;
	margin:30px auto;
	margin-bottom:80px;
}
#topLoginBar{
	background: url(${pageContext.request.contextPath}/resources/images/join/bg_tabmenu_grade.gif) 0 bottom repeat-x;
	overflow: hidden;
}
#topLoginBar a{
	display: block;
	width:120px;
	height:37px;
	background: #e71a0f;
	color:#ffffff;
	font-size: 16px;
    font-weight: 500;
    line-height: 37px;
    text-align: center;
    border-radius: 5px 5px 0 0;
    float: left;
    border:1px solid black;
    margin-right:1px;
}
#loginform{
	border-bottom: 2px solid #898987;
	width:600px;
	height:300px;
}
#loginformIn{
	width:400px;
	height:220px;
	margin:50px auto;
	margin-top:80px;
}
#loginformIn input{
 	padding: 0 5px 0 50px;
    border: 2px solid #b5b5b5;
    line-height: 40px;
}
#loginformIn input, #loginformIn button{
	display: block;
	width:300px;
	height:40px;
	margin:10px auto;
}
#loginformIn input[type=text]{
	margin-bottom: 5px;
    background: url(${pageContext.request.contextPath}/resources/images/join/sprite_icon.png) 12px -230px no-repeat;
   
}
#loginformIn input[type=password]{
	background: url(${pageContext.request.contextPath}/resources/images/join/sprite_icon.png) 12px -261px no-repeat;
}
#loginformIn button{
	width:350px;
	border: 1px solid #f07469;
    color: #f2f0e5;
    font-size: 15px;
    font-weight: 500;
    padding: 2px;
    background: #e71a0f;
    text-align: center;
    font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    cursor: pointer;
}
#loginformIn p{
	color: #666;
    font-family: 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 300;
    font-size: 13px;
    text-align: center;
    margin:10px auto;
    margin-bottom:20px;
}
#under a{
	text-decoration: underline;
}
#under{
	text-align: right !important;
	margin-right:30px !important;
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
			로그인
		</li>
	</ul>
</div>
<div id="loginContainer">
	<div id="topLoginBar">
		<a href="${pageContext.request.contextPath }/member/login">로그인</a><a href="${pageContext.request.contextPath }/member/managerLogin">관리자 로그인</a>
	</div>
	<div id="loginform">
		<div id="loginformIn">
			<p>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
			<form action="${pageContext.request.contextPath }/member/loginPost" method="post">
				<input type="text" name="mbId">
				<input type="password" name="mbPassword">
				<button type="submit" id="loginbtn"><span>로그인</span></button>
			</form>
			<p id="under"><a>아이디 찾기</a> ＞ <a>비밀번호 찾기</a></p>
		</div>
	</div>
</div>
<script>
<c:if test="${joinResult=='success' }">
alert("회원가입을 하였습니다. 로그인 후 이용해 주세요.");
</c:if>
<c:if test="${loginResult=='fail' }">
alert("아이디가 없거나 비밀번호가 틀립니다.");
<% session.removeAttribute("loginResult");%>
</c:if>
</script>

<%@ include file="../include/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin:0;
		padding:0;
	}
	#background{
		height:400px;
		background: url("${pageContext.request.contextPath}/resources/images/manager/back.gif");
		padding-top:200px;
	}
	 a{
		text-decoration: none;
		color:#939393;
	}
	#loginContainer{
		width:680px;
		height:250px;
		margin:0 auto;
	}
	#login{
		border:1px solid #ccc;
		border-radius: 10px;
		overflow: hidden;
	}
	#login div{
		float: left;
	}
	#loginBox, #inputBox, #btnBox{
		margin-top:40px;
	}
	#loginBox{
		width:200px;
		height:150px;
		padding-left:30px;
		overflow: hidden;
		position: relative;
	}
	#lineImg{
		position: absolute;
		right:20px;
		top:0;
	}
	#manager{
		font-weight: bold;
		color:red;
	}
	#loginText{
		font-size: 30px;
		font-weight: bold;
	}
	#inputBox{
		width:300px;
		font-size: 12px;
		font-weight: bold;
	}
	label{
		width:70px;
		float: left;
		padding-top:3px;
	}
	#inputBox p{
		color:#939393;
	}
	#inputBox p span{
		color:red;
	}
	#inputBox p a{
		display: block;
		width:90px;
	}
	#btnBox{
		width:120px;
	}
	#btnBox input{
		width:80px;
		height:60px;
		background: #4b4b4b;
		color:white;
		font-weight: bold;
		border-radius: 5px;
	}
	
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</head>
<body>
<div id="background">
	<div id="loginContainer">
		<form action="managerLoginPost" method="post">
			<div id="login">
				<div id="loginBox">
					<p id="manager">관리자</p>
					<p id="loginText">LOGIN</p>
					<p id="lineImg"><img src="${pageContext.request.contextPath}/resources/images/manager/login_box_line.gif"><p>				
				</div>
				<div id="inputBox">
					<label><img src="${pageContext.request.contextPath}/resources/images/manager/id.gif"></label>
					<input type="text" name="mgId" autocomplete="off"><br><br>
					<label><img src="${pageContext.request.contextPath}/resources/images/manager/pw.gif"></label>
					<input type="password" name="mgPass"><br><br><br>
					<p>이페이지는 <span>관리자 전용 로그인 페이지</span> 입니다.</p>
					<p>관리자 외 접속을 삼가해 주십시오.<a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/images/manager/go_main.gif"></a></p>
				</div>
				<div id="btnBox">
					<input type="submit" value="로그인">
				</div>			
			</div>
		</form>
	</div>
</div>
</body>
<script>
<c:if test="${loginResult=='fail' }">
alert("아이디가 없거나 비밀번호가 틀립니다.");
<% session.removeAttribute("loginResult");%>
</c:if>
</script>
</html>
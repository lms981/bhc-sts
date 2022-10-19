<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<link rel="stylesheet"  href="http://localhost:9000/mybhc/resources/css/mybhc.css">
<script src="http://localhost:9000/mybhc/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mybhc/resources/js/mybhc_jquery.js"></script>
<script>
	let join_result = '${join_result}';
	let login_result = '${login_result}';
	
	if(login_result == 'fail'){
		alert("아이디 또는 패스워드가 다릅니다. 다시 로그인해주세요");	
	}
	
	if(join_result == 'ok'){
		alert("회원가입에 성공하셨습니다.");
	}
	
	/*********************
	로그인폼 체크 함수
**********************/
$("#btnLogin").click(()=>{
	if($("#id").val() == ""){
		alert("아이디를 입력해주세요");
		$("#id").focus();
		return false;
	}else if($("#pass").val() == ""){
		alert("패스워드를 입력해주세요");
		$("#pass").focus();
		return false;
	}else{
		//서버전송
		loginForm.submit();
	}
});

});//ready function

</script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mybhc/header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
	 <h1>Login</h1>
		<form name="loginForm" action="loginCheck.do" method="post">
		<ul>
			<li>
				<label>아이디</label>
				<input type="text" name="id" id="id" placeholder="아이디를 입력해주세요">
			</li>
			<li>
				<label>패스워드</label>
				<input type="password" name="pass" id="pass">
			</li>
			<li>
				<button type="button" id="btnLogin">로그인</button>
				<button type="button" id="btnfindid">아이디 찾기</button>
				<button type="button" id="btnfindpass">비밀번호 찾기</button>
			</li>
		</ul>
		</form>
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mybhc/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>








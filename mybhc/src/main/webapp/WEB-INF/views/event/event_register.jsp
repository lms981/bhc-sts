<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 등록</title>
<script src="http://localhost:9000/mybhc/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"  href="http://localhost:9000/mybhc/resources/css/mybhc.css">
<script> 
$(document).ready(function(){
	$("#btn_event_register").click(function(){
		if($("#etitle").val()==""){
			alert("제목을 입력해주세요.");
			$("#etitle").focus();
		}else{
			event_register_form.submit();
		}
		
	});
});
</script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1 id="eve">이벤트 등록화면</h1><br>
		<p>BHC 이벤트 소식입니다.</p><br>
		<p id="eve_h">홈>BHC소식>이벤트</p><br>
		<form name="event_register_form" action="event_register_check.do" 
							enctype="multipart/form-data" method="post">
			
			<ul>
				<li>
					<label>이벤트 제목</label>
					<input type="text" name="etitle" id="etitle">
				</li>
				<li>
					<label>이벤트 기간</label>
					 <input type="date" name="esdate" id="esdate" > -
					 <input type="date" name="eedate" id="eedate" >
				</li>
				<li>
					<label>배너 파일</label>
					<input type="file" name="file1">
				</li>
				<li>
					<label>이벤트컨텐츠 파일</label>
					<input type="file" name="file1">
				</li>
				<li>
					<button type="button" id="btn_event_register">등록완료</button>
					<button type="reset">다시쓰기</button>

				</li>
			</ul>
			</form>
			</div>
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>


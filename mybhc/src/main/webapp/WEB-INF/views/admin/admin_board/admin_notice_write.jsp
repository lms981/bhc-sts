<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="http://localhost:9000/mybhc/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mybhc/resources/js/mybhc_index.js"></script>
<script>
$(document).ready(function(){
	$("#btnNoticeWrite").click(()=>{
		
		if($("#ntitle").val() == ""){
			alert("제목을 입력해주세요");
			$("#ntitle").focus();
			return false;
		}else{
			//서버전송
			noticeWriteForm.submit();
		}
	});
});



</script>
<body>
	<!-- Header Include -->
	<iframe src="header.do" width="100%" height="160px" scrolling="no"
		frameborder=0></iframe>
	<!-- Content --------->
	<div class="content">
		<h1>공지사항-글쓰기</h1>		
				
		<form name="noticeWriteForm" action="admin_notice_write_check.do" method="post">
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="ntitle" id="ntitle">
				</li>
				<li>
					<label>내용</label>
					<textarea name="ncontent" ></textarea>
				</li>
			<!-- 	<li>
					<label>파일첨부</label>
					<input type="file" name="file1">
				</li> -->
				<li>
					<button type="button" class="btn_style" id="btnNoticeWrite">등록완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_notice_list.do">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/mybhc/admin.do"><button type="button" class="btn_style">관리자홈</button></a>
				</li>
			</ul>
		</form>	
	</div>





	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="530px" scrolling="no"
		frameborder=0></iframe>


</body>
</html>
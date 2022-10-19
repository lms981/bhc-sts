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
<style>
.content {
	border-top: 2px solid #222;
	border-bottom: 1px solid #222;
}
	table.board, form[name='boardWriteForm'], 
 	table.boardContent, form[name='boardUpdateForm'],
 	form[name='boardDeleteForm'] {
 		 border:1px solid red; 
 		width:80%; margin:0 auto; 	
 		font-size:10px;	
 	} 
 	
 	.content{width:100%;margin-bottom:15px;border-top:#222 solid 2px;border-bottom:1px solid #e1e1e1;}
 /* .content  th{padding:10px 0 10px 20px;border-bottom:1px solid #959595;color:#000;font-size:15px;font-weight:bold;vertical-align:middle;} */

.content  td{padding:20px;}
 .content  td span{padding-right:20px;color:#666;}
.content  td span.titleBg{padding-right:20px !important;background:url("../images/common/register02_bg.gif") 90% 54% no-repeat;font-weight:bold;}
.content  td.reple{padding:21px 31px;border-top:1px solid #888;border-left:1px solid #dfdfdf;border-right:1px solid #dfdfdf;border-bottom:1px solid #dfdfdf;background:#f9f9f9;}
.content  td p.repleTt{margin-bottom:10px;padding:0 0 5px 0;border-bottom:1px solid #e2e2e2;color:#f21f21;font-size:16px;font-weight:bold;}
.content  td.bd2{border-bottom:2px solid #4e4e4e;}
.content  td.fileName{padding-left:20px;background:url("../images/bullet/ico_file.gif") 0 25px no-repeat;}
.content .date{font-size:12px;}
.content .date .btnLove{display:inline-block;zoom:1;*display:inline;float:right;}  
 	
</style>
<body>
	<!-- Header Include -->
	<iframe src="header.do" width="100%" height="160px" scrolling="no"
		frameborder=0></iframe>
	<!-- Content --------->
	<div class="content">
		<h1>공지사항-상세보기</h1>
		<table class="boardContent">	
			<tr>				
				<th>등록일자</th>
				<td>${vo.ndate }</td>
				<th>조회수</th>
				<td>${vo.nhits }</td>
			</tr>		
			<tr>				
				<th>제목</th>
				<td colspan="3">${vo.ntitle }</td>
			</tr>
			<tr>				
				<th>내용</th>
				<td colspan="3">${vo.ncontent }<br><br>
				<<%-- c:if test="${vo.nsfile != null }">
					<img src="http://localhost:9000/mycgv/resources/upload/${vo.nsfile }"
						width="50%">
				</c:if> --%>
				<br><br></td>
			</tr>
			<tr>
				<td colspan="4">
					<a href="admin_notice_update.do?nid=${vo.nid }"><button type="button" class="btn_style">수정하기</button></a>
					<a href="admin_notice_delete.do?nid=${vo.nid }"><button type="button" class="btn_style">삭제하기</button></a>
					<a href="admin_notice_list.do">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/mycgv/admin.do"><button type="button" class="btn_style">관리자홈</button></a>
				</td>
			</tr>			
		</table>
	</div>





	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="530px" scrolling="no"
		frameborder=0></iframe>


</body>
</html>
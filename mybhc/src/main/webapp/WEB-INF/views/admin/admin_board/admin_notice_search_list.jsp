<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="http://localhost:9000/mybhc/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mybhc/resources/js/mybhc_index.js"></script>
<script>
 $(document).ready(function(){
	
	//페이징 리스트 출력
	var pager = jQuery('#ampaginationsm').pagination({
	
	    maxSize: 7,	    		// max page size
	    totals: '${dbCount}',	// total rows	
	    page: '${rpage}',		// initial page		
	    pageSize: '${pageSize}',	// max number items per page
	
	    // custom labels		
	    lastText: '&raquo;&raquo;', 		
	    firstText: '&laquo;&laquo;',		
	    prevText: '&laquo;',		
	    nextText: '&raquo;',
			     
	    btnSize:'sm'	// 'sm'  or 'lg'		
	});
	
	//페이징 번호 클릭 시 이벤트 처리
	jQuery('#ampaginationsm').on('am.pagination.change',function(e){		
		   jQuery('.showlabelsm').text('The selected page no: '+e.page);
           $(location).attr('href', "http://localhost:9000/mybhc/admin_notice_list.do?rpage="+e.page);         
    });
	
	});
 
</script>

<script>
 //검색기능 ajax
function getSearchList(){
	$.ajax({
		type: 'GET',
//		url : "/getSearchList",
		url : "getSearchList",
		data : $("form[name=search-form]").serialize(),
		success : function(result){
			//테이블 초기화
			$('#board > body').empty();
			if(result.length>=1){
				result.forEach(function(item){
					str='<tr>'
					str += "<td>"+item.idx+"</td>";
				//	str+="<td>"+item.writer+"</td>";
					str+="<td><a href = '/board/detail?idx=" + item.idx + "'>" + item.title + "</a></td>";
					str+="<td>"+item.date+"</td>";
					str+="<td>"+item.hit+"</td>";
					str+="</tr>"
					$('#boardtable').append(str);
        		})				 
			}
		}
	})
} 
</script>
<style>
/* faq */
.content {
	border-top: 2px solid #222;
	border-bottom: 1px solid #222;
}
	table.board, form[name='boardWriteForm'], 
 	table.boardContent, form[name='boardUpdateForm'],
 	form[name='boardDeleteForm'] {
 		/* border:1px solid red; */
 		width:80%; margin:0 auto; 	
 		font-size:10px;	
 	}

/* table.board, table.board th, table.board td, table.boardContent, table.boardContent th,
	table.boardContent td {
	border: 1px solid red;
	border-collapse: collapse;
}

table.board th, table.boardContent th {
	background-color: #FFE4C4;
}

table.board th, table.board td, table.boardContent th, table.boardContent td
	{
	padding: 10px 0;
}

table.board td, table.boardContent {
	text-align: center;
}

table.board tr:first-child td {
	border: 1px solid blue;
	border-bottom: 1px solid #ccc;
	text-align: right;
}

table.board tr:first-child td button {
	/* border:1px solid blue; 
	background-color: #ccc;
	border-color: #ccc;
	border-radius: 5px;
} */

table.board tr:last-child td, table.boardContent tr:last-child td {
	border: 1px solid black;
	border-top: 1px solid #ccc;
	padding-top: 20px;
}

table.board  td a {
	text-decoration: none;
	color: #000;
}

table.board  td a:hover {
	text-decoration: underline;
} */ */
table{empty-cells: show;/*깨짐방지*/collapse:collapse;}
table th, table td{padding:3px 0;line-height:18px;vertical-align:middle;}
.content{width:100%;margin-top:20px;border-top:#222 solid 2px;}
.content  th{padding:10px 0;border-bottom:#959595 solid 1px;color:#000;font-size:14px;font-weight:bold;text-align:center;}
.content  td{padding:12px 0;border-bottom:#e1e1e1 solid 1px;}
.content  td.mypageNone{padding:50px 0;color:#222;font-size:18px;}
.content  td dd{padding-left:10px;background:url("../images/bullet/dot_g.gif") no-repeat 0 9px;line-height:20px;}

</style>
<body>
	<!-- Header Include -->
	<iframe src="header.do" width="100%" height="160px" scrolling="no"
		frameborder=0></iframe>
	<!-- Content --------->
	<div class="content">
		<h1>공지사항-리스트</h1>
		<table class="board">
			<tr>
				<td colspan="4"><a href="admin_notice_write.do">
						<button type="button" class="btn_style">글쓰기</button>
				</a></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.nid }</td>
					<td><a href="admin_notice_content.do?nid=${vo.nid }">${vo.ntitle }</a></td>
					<td>${vo.ndate }</td>
					<td>${vo.nhits }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4"><div id="ampaginationsm"></div></td>
			</tr>
		</table>
	</div>
	
	<div>
		<form name="search-form" autocomplete="off">
			<select name="type">
				<option selected value="">검색 내용</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
			<input type="text" name="keyword" value=""></input>
			<input type="button" onclick="getSeearchList()" class="btn btn-outline-primary mr-2" value="검색"></input>
		</form>
	</div> 




	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="530px" scrolling="no"
		frameborder=0></iframe>


</body>
</html>
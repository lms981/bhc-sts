<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="http://localhost:9000/mybhc/resources/css/mybhc_event.css">
<link rel="stylesheet"  href="http://localhost:9000/mybhc/resources/css/mybhc.css">
</head>
<body>
	<!-- Header Include -->
	<iframe src="header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	<button><a href="event_register.do">이벤트 등록</a></button>
	<ul class="event_bhc_ul">
	<c:forEach var="event" items="${list}">
		<li>
			<div class="event_image">
				<a href="event_content.do?eid=${event.eid }">
					<img src="http://localhost:9000/mybhc/resources/upload/${event.esfile1 }">
				</a>
			</div>
			<div class="event_content">
				<img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif">
				<div>${event.etitle}</div>
				<div>${event.esdate} ~ ${event.eedate}</div>			
			</div>
		</li>
	</c:forEach>
	</ul>
	
		<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>
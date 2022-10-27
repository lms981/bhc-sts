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
	<ul>
		<li>
			<div>${vo.etitle }</div>		
		</li>
		<li>
			<div>${vo.esdate } ~ ${vo.eedate }</div>		
		</li>
		<li>
			<img src="http://localhost:9000/mybhc/resources/upload/${vo.esfile2 }">
		</li>
		<li>
			<a href="event_list.do"><button type="button">목록</button></a>	
		</li>
	</ul>
		<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>
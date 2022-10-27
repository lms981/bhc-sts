<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce43c5c381d31cf2d6f8099be9d7fec2"></script>
<body>
 <!-- 카카오지도 api  -->
<div id="map" style="width:500px;height:400px;">


	<script>
	var latitude = ${vo.latitude};
	var longitude = ${vo.longitude}
	
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(latitude,longitude), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(latitude, longitude); 

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	</script>
<!-- 	<script>
	var latitude = ${vo.latitude};
	var longitude = ${vo.longitude}
	
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(latitude,longitude), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	</script> -->

	
	<table class="boardContent">	
			<tr>				
				<th>등록일자</th>
				<td>${vo.latitude} </td>
				<th>조회수</th>
				<td>${vo.longitude}</td>
			</tr>
			</table>
</body>
</html>
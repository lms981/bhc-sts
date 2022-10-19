<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="http://localhost:9000/mybhc/resources/css/mybhc.css">
</head>
<body>
	<!-- Header Include -->
	<iframe src="header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	<!-- Content --------->
			<div class="menuBox">
				<img src="http://localhost:9000/mybhc/resources/images/map_txt01.gif" alt="지도검색">
				<div class="mapBox">
					<div class="mapLeft">
						<img id="mapImg" src="http://localhost:9000/mybhc/resources/images/map_bg.png" alt="지도" usemap="#map">
					</div>
					<div class="mapright">
						<h4><img src="http://localhost:9000/mybhc/resources/images/map_txt02.gif" alt="매장검색"></h4>
						<p class="mapTxt01">
							해당지역을 선택하시면<br>가장 가까운 BHC매장을<br>안내해드립니다
						</p>
						<div class="mapSearch">
							<p>
								<input type="text" class="w298 middle" id="psearch_text" name="psearch_text" onclick=" $('#psearch_text').val(''); " value="검색어를 입력하세요!" onkeydown="CheckEnt(this.value)">
								<a href="javascript:void(0);" onclick="SearchformCheck()"><img src="http://localhost:9000/mybhc/resources/images/btn_store02.gif" alt="매장찾기" class="middle sml10"></a>
							</p>

							<p class="txtPoint">지역명이나 매장명으로 가까운 매장정보를 찾으실 수 있습니다.</p>
						</div>
						<div class="pop_wrap" style="display:none">
							<div class="pop_bg"></div>
							<div class="pop_snsWrap">
								<p class="pop_close"><a href="#none"><img src="http://localhost:9000/mybhc/resources/images/sms_close.png" alt=""></a></p>
								<textarea class="a160 mt36">상담내용을 작성후 SEND 버튼을 눌러 주시면 빠른 연락 드리겠습니다.</textarea>
								<a href="#none"><img src="http://localhost:9000/mybhc/resources/images/btn_send.gif" alt="" class="mt5"></a>
							</div>
						</div>
					</div>
				</div>
				
				<p class="right mt40 mb5">
					<a href="/foundation/advice03.asp"><img src="http://localhost:9000/mybhc/resources/images/btn_online.gif" alt=""></a>
					<a href="javascript:void(0);" onclick="WindowSmsByMask_right()"><img src="http://localhost:9000/mybhc/resources/images/btn_sms.gif" alt=""></a>
				</p>
				
				<div class="datazone">
				<table class="register01" summary="">
					<colgroup>
						<col width="225">
						<col width="*">
						<col width="100">
					</colgroup>
					<tbody>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://localhost:9000/mybhc/resources/images/BHC_Bear_new.gif" alt="BHC 비어존" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p>가남점</p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 경기 여주시 가남읍 태평로 24-1 (태평리) <br>
									<span class="bold">전화번호</span> : 031-882-5800
								</p>
							</td>
							<td></td>
						</tr>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://localhost:9000/mybhc/resources/images/BHC_order.gif" alt="BHC 레귤러" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p>가능점</p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 경기 의정부시 가능동 667-20 <br>
									<span class="bold">전화번호</span> : 031-877-9992
								</p>
							</td>
							<td></td>
						</tr>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://localhost:9000/mybhc/resources/images/BHC_order.gif" alt="BHC 레귤러" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p>가락점</p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 서울 송파구 송이로14길 3 (가락동) <br>
									<span class="bold">전화번호</span> : 02-404-2010
								</p>
							</td>
							<td></td>
						</tr>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://localhost:9000/mybhc/resources/images/BHC_Bear_new.gif" alt="BHC 비어존" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p>가산디지털점</p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 서울 금천구 가산디지털1로 181 (가산동, 가산 더블유센터) <br>
									<span class="bold">전화번호</span> : 02-6281-6644
								</p>
							</td>
							<td></td>
						</tr>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://localhost:9000/mybhc/resources/images/BHC_order.gif" alt="BHC 레귤러" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p><a href="javascript:void(0);" onclick="mapwin('37.561894','126.851080','가양점')" class="f18 black">가양점</a></p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 서울 강서구 등촌동 707-1 상가107호<br>
									<span class="bold">전화번호</span> : 02-3663-9263
								</p>
							</td>
							<td><a href="javascript:void(0);" onclick="mapwin('37.561894','126.851080','가양점')"><img src="http://localhost:9000/mybhc/resources/images/btn_map.gif" alt=""></a></td>
						</tr>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://www.bhc.co.kr/images/location/BHC_Bear_new.gif" alt="BHC 비어존" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p><a href="javascript:void(0);" onclick="mapwin('37.5149285','126.6757338','가정점')" class="f18 black">가정점</a></p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 인천 서구 율도로 47-2 (신현동) 1층<br>
									<span class="bold">전화번호</span> : 032-584-2228
								</p>
							</td>
							<td><a href="javascript:void(0);" onclick="mapwin('37.5149285','126.6757338','가정점')"><img src="../../images/button/btn_map.gif" alt=""></a></td>
						</tr>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://www.bhc.co.kr/images/location/BHC_Bear_new.gif" alt="BHC 비어존" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p><a href="javascript:void(0);" onclick="mapwin('37.494004','126.671340','가좌1동점')" class="f18 black">가좌1동점</a></p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 인천 서구 가좌동 146-35<br>
									<span class="bold">전화번호</span> : 032-575-5777
								</p>
							</td>
							<td><a href="javascript:void(0);" onclick="mapwin('37.494004','126.671340','가좌1동점')"><img src="http://localhost:9000/mybhc/resources/images/btn_map.gif" alt=""></a></td>
						</tr>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://localhost:9000/mybhc/resources/images/BHC_Bear_new.gif" alt="BHC 비어존" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p>가좌중앙점</p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 인천 서구 가좌동 72-1<br>
									<span class="bold">전화번호</span> : 032-577-5886
								</p>
							</td>
							<td></td>
						</tr>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://localhost:9000/mybhc/resources/images/BHC_Bear_new.gif" alt="BHC 비어존" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p><a href="javascript:void(0);" onclick="mapwin('37.678197','127.489119','가평설악점')" class="f18 black">가평설악점</a></p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 경기 가평군 설악면 신천중앙로 132-1, 1층<br>
									<span class="bold">전화번호</span> : 031-585-9982
								</p>
							</td>
							<td><a href="javascript:void(0);" onclick="mapwin('37.678197','127.489119','가평설악점')"><img src="../../images/button/btn_map.gif" alt=""></a></td>
						</tr>
	
						<tr>
							<td class="pt20 pb20">
								
                        <img src="http://localhost:9000/mybhc/resources/images/BHC_Bear_new.gif" alt="BHC 비어존" style="width: 200px; height: 110px; ">
                      
							</td>
							<td>
								<p><a href="javascript:void(0);" onclick="mapwin('37.833954','127.509737','가평점')" class="f18 black">가평점</a></p>
								<p class="mt10 mb10">
									<span class="bold">주소</span> : 경기도 가평군 가평읍 석봉로 212 (에이스1차) <br>
									<span class="bold">전화번호</span> : 031-581-2930
								</p>
							</td>
							<td><a href="javascript:void(0);" onclick="mapwin('37.833954','127.509737','가평점')"><img src="../../images/button/btn_map.gif" alt=""></a></td>
						</tr>

					</tbody>
				</table>
			</div>
				
				<!-- 페이징 -->
				<div class="paging">
<img src="http://localhost:9000/mybhc/resources/images/allow_left_d.gif" alt="">&nbsp;<img src="http://localhost:9000/mybhc/resources/images/allow_left.gif" alt="이전">&nbsp;<a href="javascript:void(0);" onclick=" goPage('1') " class="on">1</a>&nbsp; <a href="javascript:void(0);" onclick=" goPage('2') ">2</a>&nbsp; <a href="javascript:void(0);" onclick=" goPage('3') ">3</a>&nbsp; <a href="javascript:void(0);" onclick=" goPage('4') ">4</a>&nbsp; <a href="javascript:void(0);" onclick=" goPage('5') ">5</a>&nbsp; <a href="javascript:void(0);" onclick=" goPage('6') ">6</a>&nbsp; <a href="javascript:void(0);" onclick=" goPage('7') ">7</a>&nbsp; <a href="javascript:void(0);" onclick=" goPage('8') ">8</a>&nbsp; <a href="javascript:void(0);" onclick=" goPage('9') ">9</a>&nbsp; <a href="javascript:void(0);" onclick=" goPage('10') ">10</a>&nbsp;<a href="javascript:void(0);" onclick=" goPage('11') " class="pr0" alt="다음"><img src="http://localhost:9000/mybhc/resources/images/allow_right.gif" alt="다음"></a>&nbsp;<a href="javascript:void(0);" onclick=" goPage('161') " class="pl0"><img src="http://localhost:9000/mybhc/resources/images/allow_right_d.gif" alt=""></a>&nbsp;</div>
				<!--// 페이징 -->
				
				</div>	
			
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 등록</title>
<link rel="stylesheet"  href="http://localhost:9000/mybhc/resources/css/mybhc.css">
<script src="http://localhost:9000/mybhc/resources/js/jquery-3.6.0.min.js"></script>
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
			
	<div class="content">
		<h1 id="eve">이벤트</h1><br>
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
					<label>파일</label>
					<input type="file" name="file1">
				</li>
				<li>
					<button type="button" id="btn_event_register">등록완료</button>
					<button type="reset">다시쓰기</button>

				</li>
			</ul>
				<!-- content -->
	<div class="content_b event">
	<div class="quickMenu"> 
			<!--<p class="quick_order q_left_top"><a href="javascript:void(0);" onclick="fn_login_order()">온라인주문</a></p>-->
	<!--<p class="quick_order q_left_top"><a href="#" onclick="window.open('../popup/pop_appDownload.asp','pagename','status=no,scrollbars=no,resizable=no,height=600,width=620'); return false;">온라인주문</a></p>-->
	<p class="quick_order q_left_top"><a href="#" onclick="window.open('https://online.bhc.co.kr/order/orderSelect.do','pagename','status=no,scrollbars=no,resizable=no,height=600,width=620'); return false;">온라인주문</a></p>
	<!-- <p class="quick_order q_left_btm"><a href="#" onclick="window.open('https://online.bhc.co.kr/order/coupon.do','pagename','status=no,scrollbars=no,resizable=no,height=680,width=1150'); return false;">스마트폰/기프티콘 e쿠폰주문</a></p> -->
	<p class="quick_order q_left_mall"><a href="https://bhcmall.co.kr/main/" target="_blank" title="새창열림">BHC mall 바로가기</a></p>

	<ul>
    	<!--<li><img src="/images/common/new_quick6.png" alt="가맹점 운영시간 12:00~24:00"></li>-->
		<li><a href="javascript:void(0);" onclick="WindowSmsByMask_right()"><img src="/images/common/new_quick2.gif" alt="SNS 상담" /></a></li>
		<li><a href="/foundation/advice03.asp"><img src="/images/common/new_quick3.gif" alt="온라인상담" /></a></li>
		<li><a href="/foundation/cost.asp"><img src="/images/common/new_quick_franchise.png" alt="창업비용" /></a></li>
		<!-- <li><a href="#" onClick="window.open('http://www.mindsettechs.com/bhc/','pagename','directories=no,titlebar=no,toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,height=490,width=400'); return false;"><img src="/images/common/new_quick6_170628.jpg" alt="챗봇상담 창업상담" /></a></li>	 -->	
	</ul>
	<p class="quick_top"><a href="#">상단으로 이동</a></p>
</div>
			<h2>이벤트</h2>
			<p class="h2Txt">BHC 이벤트 소식입니다.</p>
			<p class="location"><span><img src="../../images/common/ico_home.gif" alt="홈"  /> <a href="http://www.bhc.co.kr">홈</a></span> &gt; <span><a href="/event/ing01.asp">BHC 소식</a></span> &gt; <span>이벤트</span></p>	
			<div class="content menuBox">
			
				<!-- 텝 메뉴 -->
				<ul class="menuTab mb30 clearfix">
					<li><a href="ing01.asp" class="on">이벤트</a></li>
					<li><a href="win01.asp">당첨자 발표</a></li>
				</ul>
				

			
			
		<div class="event_box">
			<div class="event_text" id="event_text_top">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img" style="background-image:url('http://localhost:9000/mybhc/resources/event_img/220808_bhc_영수증이벤트_320X145-배너(1).jpg');">
					<!-- <img src="http://localhost:9000/mybhc/resources/event_img/220808_bhc_영수증이벤트_320X145-배너(1).jpg" alt="" width="320px" height="145px"> -->
					
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">bhc 888출석체크 이벤트</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-08-08 ~ 2022-08-28  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>
			<div class="event_text">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img">
					<img src="http://localhost:9000/mybhc/resources/event_img/BHC_이벤트배너_320x145_뿌링클.jpg" alt="" width="320px" height="145px">
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">요기요 첫 주문 시 전메뉴 10,000원 할인!</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-08-01 ~ 2022-08-31  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>
			<div class="event_text">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img">
					<img src="http://localhost:9000/mybhc/resources/event_img/BHC_이벤트배너_320x145_치퐁당 후라이드(0).jpg" alt="" width="320px" height="145px">
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">요기요 첫 주문 시 전메뉴 10,000원 할인!</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-07-01 ~ 2022-07-31  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>
			<div class="event_text">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img">
					<img src="http://localhost:9000/mybhc/resources/event_img/이벤트_페이지_배너.jpg" alt="" width="320px" height="145px">
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">[bhc] 홈페이지 영수증 인증 이벤트</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-06-13 ~ 2022-06-30  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>
			<div class="event_text">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img">
					<img src="http://localhost:9000/mybhc/resources/event_img/BHC_이벤트배너_320x145_치퐁당 후라이드.jpg" alt="" width="320px" height="145px">
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">요기요 첫주문 시 전 메뉴 총 10,000원 할인</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-06-01 ~ 2022-06-30  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>
			<div class="event_text">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img">
					<img src="http://localhost:9000/mybhc/resources/event_img/이벤트 배너.jpg" alt="" width="320px" height="145px">
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">bhc 치퐁당 클라우드 참여매장</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-06-07 ~ 2022-07-30  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>
			<div class="event_text">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img">
					<img src="http://localhost:9000/mybhc/resources/event_img/순삭챌린지-홈페이지-썸네일-이미지.jpg"" alt="" width="320px" height="145px">
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">치퐁당 순삭 챌린지</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-05-04 ~ 2022-05-31  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>
			<div class="event_text">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img">
					<img src="http://localhost:9000/mybhc/resources/event_img/순삭챌린지-홈페이지-썸네일-이미지.jpg" alt="" width="320px" height="145px">
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">요기요 첫 주문 시 전메뉴 10,000원 할인!</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-05-01 ~ 2022-05-31  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>
			<div class="event_text">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img">
					<img src="http://localhost:9000/mybhc/resources/event_img/BHC__320x145(1).jpg" alt="" width="320px" height="145px">
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">요기요 첫 주문 시 전메뉴 10,000원 할인!</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-04-01 ~ 2022-04-30  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>
			<div class="event_text">
				<div class="event_end"><span>종료된 이벤트입니다.</span></div>
				<p class="event_img">
					<img src="http://localhost:9000/mybhc/resources/event_img/BHC_이벤트 배너_320x145(0).jpg" alt="" width="320px" height="145px">
					<!-- <img src="C:\dev\spring-workspace\mybhc\mybhc\src\main\webapp\resources\event_img\220808_bhc_영수증이벤트_320X145-배너(1).jpg">-->
				</p>
				<p class="text">
					<p><img src="http://localhost:9000/mybhc/resources/event_img/online_event.gif" alt="" /></p>
					<p class="f18 mt20 mt15 mt10">요기요 첫 주문 시 전메뉴 10,000원 할인!</p>
					<p class="mt5 mb20">
                                <!--이벤트기간동안 치킨 한마리 이상 주문시 사은품 증정합니다 !!-->
                            </p>
                            <span class="f14">이벤트 기간: </span>
                            <span class="gray03">2022-03-01 ~ 2022-04-01  </span>
     			
     			<span class="f"><a href="#none" onclick="facebooksend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501','')"> <img src="http://localhost:9000/mybhc/resources/event_img/btn_faceb.gif" alt="" /></a>
								<a href="#none" onclick="twittersend('[BHC 이벤트] bhc 888출석체크 이벤트 ','http://www.bhc.co.kr/event/ing02.asp?idx=164&menuCode=MN030501')"><img src="http://localhost:9000/mybhc/resources/event_img/btn_twitter.gif" alt="" /></a></span>
                        
			</div>		
		</div>
		</form>
			
	</div>
	</div>
	</div>

</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://localhost:9000/mybhc/resources/js/jquery-3.6.0.min.js"></script>

<title>BHC</title>
<link rel="stylesheet"  href="http://localhost:9000/mybhc/resources/css/mybhc.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<script>
	 /* function showPopUp() {
			
			//창 크기 지정
			var width = 500;
			var height = 500;
			
			//pc화면기준 가운데 정렬
			var left = (window.screen.width / 2) - (width/2);
			var top = (window.screen.height / 4);
			
		    	//윈도우 속성 지정
			var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
			
		    	//연결하고싶은url
		    	const url = "https://seeminglyjs.tistory.com/";

			//등록된 url 및 window 속성 기준으로 팝업창을 연다.
			window.open(url, "hello popup", windowStatus);
		} */
	 $(document).ready(function (){
		// showPopUp();
		 $(".bg1").show();
		$(".info01").mouseover(function (){	
			$(".bg1").show();
			$(".bg2").hide();
			$(".bg3").hide(); 
		});
		$(".info02").mouseover(function (){ 	
			$(".bg1").css("display","none");
			$(".bg2").show();
			$(".bg3").css("display","none");   		  
		});
		$(".info03").mouseover(function (){
		 	$(".bg3").show();
		 	$(".bg1").css("display","none");
		 	$(".bg2").css("display","none"); 
		});
	 });
 
		
 
 </script>
<script src="http://localhost:9000/mybhc/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mybhc/resources/js/mybhc_index.js"></script>
<body>
<div class="main_banner">
				<!-- s:팝업-->
			
				
				<!--
				<article id="pop_main4" class="pop_main" style="width:450px;left:0px;margin-left:0px;margin-top:-50px">
					 <a href="https://doit5.com/hvm/event/bhc/A11/index.html"><img src="/images/popup/popup_20220908.png" style="width:100%;" alt="가을맞이 뿌찌의 캐치캐치" /></a>
					<p class="pop_main_foot">
						<label>
							<input type="checkbox" class="checkbox todayChk" />
							<span>오늘하루 그만보기</span>
						</label>
						<a href="#" class="pop_close">닫기</a>
					</p>
					<a href="#" class="pop_main_close pop_close">팝업닫기</a>
				</article>
				-->
              <!-- 
                <article id="pop_main" class="pop_main" style="width:450px;left:0px;margin-left:0px;margin-top:-50px;">
                    <img src="http://localhost:9000/mybhc/resources/images/bhc_popup_20220831.jpg" style="width:100%;" alt="비어존 신메뉴" />
                    <p class="pop_main_foot">
                    <input type="button" value="창닫기" onClick="window.close()">
                    </p>
                </article>
                
                
                
                

                <article id="pop_main" class="pop_main" style="width:450px;left:0px;margin-left:0px;margin-top:-50px">
					<img src="http://localhost:9000/mybhc/resources/images/popup_20220818.jpg" style="width:100%;" alt="bhc 단팥 & 크림치즈 트위스트" />
					<p class="pop_main_foot">
						<input type="button" value="창닫기" onClick="window.close()">
					</p>
				</article>
               -->

</div>


	<!-- Header Include -->
	<iframe src="header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	<!-- Content --------->
	<div class="content">
		<section>
			<div class="main1">
			
				<div class="img1">
					<img src="http://localhost:9000/mybhc/resources/images/2022-08-31 175343.png">
					<img src="http://localhost:9000/mybhc/resources/images/2022-08-31 175427.png">
					<img src="http://localhost:9000/mybhc/resources/images/new_quick2.gif">
					<img src="http://localhost:9000/mybhc/resources/images/new_quick3.gif">
					<img src="http://localhost:9000/mybhc/resources/images/new_quick_franchise.png">
				</div>
				
				<div id="demo" class="carousel slide" data-bs-ride="carousel">
					
					<div class="carousel-indicators">
		    			<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
		   	 			<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
		   	 			<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
		   	 			<button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
		   	 			<button type="button" data-bs-target="#demo" data-bs-slide-to="4"></button>
		   	 			<button type="button" data-bs-target="#demo" data-bs-slide-to="5"></button>
		   	 			<button type="button" data-bs-target="#demo" data-bs-slide-to="6"></button>
		   	 			<button type="button" data-bs-target="#demo" data-bs-slide-to="7"></button>
		   	 			<button type="button" data-bs-target="#demo" data-bs-slide-to="8"></button>
	 		 		</div>
	 		 		
	 		 		<div class="carousel-inner">
	    				<div class="carousel-item active">
	                    	<img src="http://localhost:9000/mybhc/resources/images/img_main_banner_20220902.jpg" alt="단팥트위스트 크림치즈트위스트" class="d-block w-100"/>
	                	</div>
	                	<div class="carousel-item">
	                    	<img src="http://localhost:9000/mybhc/resources/images/img_main_banner_220418.jpg" alt="치퐁당 후라이드" class="d-block w-100"/> 
						</div>
						<div class="carousel-item">
	                    	<img src="http://localhost:9000/mybhc/resources/images/img_main_banner_220418_2.jpg" alt="bhc치킨 대표 인기 메뉴 TOP3" class="d-block w-100"/> 
						</div>
						<div class="carousel-item">
	                    	<img src="http://localhost:9000/mybhc/resources/images/img_main_banner_220418_3.jpg" alt="포테킹 후라이드x하바네로가 만났다 하바네로 포테킹 후라이드" class="d-block w-100"/> 
						</div>
						<div class="carousel-item">
	                    	<img src="http://localhost:9000/mybhc/resources/images/img_main_banner_220418_4.jpg" alt="SNS 포테킹 야구 연출 배너" class="d-block w-100"/> 
						</div>
						<div class="carousel-item">
	                    	<img src="http://localhost:9000/mybhc/resources/images/img_main_banner_220418_5.jpg" alt="SNS 양념치킨+뿌링클 연출 배너" class="d-block w-100"/> 
						</div>
						<div class="carousel-item">
	                    	<img src="http://localhost:9000/mybhc/resources/images/img_main_banner_220418_6.jpg" alt="SNS 골드킹 우드트레이 연출 배너" class="d-block w-100"/> 
						</div>
						<div class="carousel-item">
	                    	<img src="http://localhost:9000/mybhc/resources/images/img_main_banner_220418_7.jpg" alt="부드럽고 깔끔한 HMR 리얼 닭가슴살" class="d-block w-100"/> 
						</div>
						<div class="carousel-item">
	                    	<img src="http://localhost:9000/mybhc/resources/images/img_main_banner_220418_8.jpg" alt="bhc 멍쿠키 출시" class="d-block w-100"/> 
						</div>
					</div>
						
					<button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
	    				<span class="carousel-control-prev-icon"></span>
	  				</button>
	  				<button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
	    				<span class="carousel-control-next-icon"></span>
	  				</button>
	  				
				</div>
				
				<div class="img3">
					<img src="http://localhost:9000/mybhc/resources/images/2022-08-31 180100.png">
				</div>
				
			</div>
		</section>
		<div class="main2">
			<section>
				<iframe width="785" height="485" src="https://www.youtube.com/embed/g6Yu-X71308" 
					title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; 
					encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</section>
			<section>
				<div class="section02 clear" id="infotab">
					<div class="bhc_infomation">				
						<ul class="infotab" >
							<li class="on"><a href="#none" class="info01"><h4>BHC 소개</h4></a></li>
							<li><a href="#none" class="info02"><h4>고객 만족</h4></a></li>
							<li><a href="#none" class="info03"><h4>창업 정보</h4></a></li>
						</ul>
						<div class="info_view">
							<div class="bg1">
								<p class="tit">Better & Happier Choice</p>
								<p class="sub">지속적인 혁신과 도전으로 치킨시장 선도 프랜드 BHC</p>
								<ul>
									<li>치킨시장의 새로운 트렌드 리더, NO.1 치킨 프랜차이즈</li>
									<li>다양한 맛과 재미를 경험 할 수 있는 치킨 문화공간</li>
									<li>최고의 맛과 품질로 고객에게 행복을 전하는 기업</li>
									<li>‘더 깨끗하게, 더 친절하게, 더 맛있게‘ 고객 중심 경영 </li>
								</ul>
							</div>  
							<div class="bg2">
								<p class="tit">고객중심 경영, 품질 경영에 앞장 선 BHC</p>
								<p class="sub">BHC 만의 QCS(품질,청결,서비스) 관리 시스템 구축</p>
								<ul>
									<li>고객 만족을 위한 BHC만의 QCS 매뉴얼 구축 및 가맹점 교육</li>
									<li>본사의 슈퍼 바이저 (S/V)정기적으로 가맹점 방문 QCS점검 · 교육</li>
									<li>업계 최초 위생등급 획득 1,000개 매장으로 품질 신뢰도 구축</li>
									<li>본사에서 직접 CS센터 운영으로 고객 서비스 강화</li>
								</ul>
							</div> 
							<div class="bg3">
								<p class="tit">치킨 프랜차이즈 수익률 1위 BHC</p>
								<p class="sub">수익성 1위, 창업비용 4배 평균 매출</p>
								<ul>
									<li>BHC만의 체계적인 시스템으로 안정적인 수익구조</li> 
									<li>최신 트렌드 반영한 신 메뉴 출시로 지속적인 수익 창출</li>
									<li>공격적인 마케팅 전개로 브랜드인지 및 고객 만족도 향상</li>  
									<li>가정간편식(HMR), 펫푸드등 다양한 상품 출시로 추가 수익</li>
								</ul>
							</div>
						</div>
						<div class="main_sns_warp">
							<p class="tit">SNS</p>
							<ul>
								<li><a href="https://pf.kakao.com/_ExlBVl" target="_blank"><img src="http://localhost:9000/mybhc/resources/images/btn_kakaoplus_main.png" alt="카카오플러스친구 바로가기"></a></li>
								<li><a href="http://www.facebook.com/bhcchicken" target="_blank"><img src="http://localhost:9000/mybhc/resources/images/btn_facebook_main.png" alt="페이스북 바로가기"></a></li>
								<li><a href="https://instagram.com/bhc_chicken_official?igshid=16tcbhequ830e" target="_blank"><img src="http://localhost:9000/mybhc/resources/images/btn_instagram_main.png" alt="인스타그램 바로가기"></a></li>
								<li><a href="https://www.youtube.com/channel/UCvohsyXlehjoLHWuffue5IA" target="_blank"><img src="http://localhost:9000/mybhc/resources/images/btn_youtube_main.png" alt="유튜브채널 바로가기"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="http://localhost:9000/mybhc/resources/css/mybhc.css">
<link rel="stylesheet"  href="http://localhost:9000/mybhc/resources/css/am-pagination.css">
<script src="http://localhost:9000/mybhc/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mybhc/resources/js/am-pagination.js"></script>
<script>

$(document).ready(function() {
    for (i = 1; i <= 4; i++) {
       $('#drop' + i).click(function() {
          $(this).find('.drop1').slideToggle();
       });
    }
 });//ready
</script>


</head>




<body>




<iframe src="http://localhost:9000/mybhc/header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>


<div class="content faq_wrap">
     <h2>FAQ</h2>
         <P>궁금한 사항은 무엇이든 물어보세요<P>
				<div class="content faq_wrap">
				<div class="faq_cont">
					<ul class="faq-ui">
						<li >
							<button ><span class="blind">질문</span>치킨 크기가 차이가 나는 이유는 뭔가요?</button>
							<div style="display:block;"><span class="blind">답변</span>당사에서 사용중인 원료육은 닭고기의 Golden zone 에 해당하는 국내산 10호(중량 951~1050g) 크기의 재료만 사용하고 있습니다. 10호 닭은 육즙이 풍부하고 부드러우며 쫄깃한 질감이 살아있어 최상의 맛을 느낄수 있지만 , 개체의 발육상태 또는 부분발육상태(다리, 날개 등)에 따라 오차범위내의 무게차이가 발생 할 수 있습니다. 또한 조리가 진행되면서 유,수분의 증발로 인해 중량차이가 발생합니다.</div>
						</li>
						
						<li>
							<button><span class="blind">질문</span>치킨속살이 빨개요. 안익은 건가요?</button>
							<div style="display:block;"><span class="blind">답변</span>닭고기를 포함하여 육류의 근육세포내 미오글로빈이라는 단백질 성분이 있습니다. <br>        해당 성분이 열과 산소를 만나면 속살이 붉게 나타나는 "핑킹현상" 으로 안심하고 드셔도 무방합니다. 그러나 덜익은 제품으로 의심이 될 경우 제품사진과 함께 문의 주시면 현물 검수를 통해 정확히 안내 도와드리도록 하겠습니다.</div>
						</li>
						<li>
							<button><span class="blind">질문</span>BHC 고올레산 해바라기유는 안전한 기름인가요?</button>
							<div style="display:none;"><span class="blind">답변</span>당사는 고품질의 고올레산 해바라기유만을 사용하여 소비자의 건강보호에 앞장서고 있습니다. <br>        고올레산 해바라기유는 좋은 콜레스테롤은 높이고 나쁜 콜레스테롤을 낮춰주는 단일 불포화지방산의 함량이 일반 해바라기유보다 3배이상 높아 맛과 영양이 한층 강화된 웰빙 유지류 입니다. </div>
						</li>
						<li>
							<button><span class="blind">질문</span>가맹점의 튀김유 관리는 어떻게 하나요?</button>
							<div style="display:none;"><span class="blind">답변</span>BHC의 모든 가맹점은 본사에서 실시하는 면접, 실무, 이론교육을 모두 이수하여 자격이 부여됩니다. <br>        가맹점은 매일 신선한 오일을 사용하기 위해 주기적으로 교체 및 여과기를 사용하고 있으며 산패도측정지를 이용하여 튀김유를 관리하고 있습니다. 또한 가맹점 운영담당자(SV)와 본사 QCS팀의 직원이 불시, 상시로 사용중인 오일을 수거 후 당사 연구소 품질관리팀에서 전문 분석장비를 이용하여 
        혼유 및 유지산가를 정밀 측정하여 관리 하고 있습니다. </div>
						</li>
						<li>
							<button><span class="blind">질문</span>치킨에 목 뼈가 없어요. 누락된 건가요?</button>
							<div style="display:none;"><span class="blind">답변</span>당사 제품의 경우, 비가식부위(목, 날개 끝부분, 잔털)는 미관상, 건강상(ex.치아손상 등) 의 사유로 취급하지 않고 있습니다.</div>
						</li>
						<li>
							<button><span class="blind">질문</span>치킨은 국내산 닭만 사용하나요?</button>
							<div style="display:none;"><span class="blind">답변</span>bhc치킨은 국내산 닭 사용을 기본 원칙으로 합니다. 
							<br>HACCP(식품안전관리인증기준) 인증 업체에서 공급하는 가장 신선한 국내산 닭고기만 사용하고 있습니다. 
							다만, 공급물량 부족사항 발생 시 (자연적∙사회환경적 이슈) 일부 물량에 한하여 국내산 냉동육을 원료로 대체하여 사용하고 있습니다. 
							국립검역원의 엄격한 검증을 거진 국내산 닭고기만을 사용하고 있으니 안심하고 드실 수 있습니다.
							<br><br>※ 닭뼈의 도계과정에서 원자재 처리 시 방혈(육색과 육질을 좋게 하기 위해 혈액을 방혈 시키는 것) 작업 및 뼈 부분이 멍든 경우 간혹 색이 검붉게 보일 수 있습니다. 
							</div>
						</li>
					</ul>
				</div>
				
				
				
			</div>
		</div>

<iframe src="http://localhost:9000/mybhc/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>
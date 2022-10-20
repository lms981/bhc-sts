<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0045)https://online.bhc.co.kr/order/orderSelect.do -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title> BHC </title>
<link rel="icon" href="http://localhost:9000/mybhc/resources/image/favicon.ico">
<!-- New customization -->
<link rel="stylesheet" href="http://localhost:9000/mybhc/resources/css/bhc_order.css">
<link rel="stylesheet" href="http://localhost:9000/mybhc/resources/css/bhc_addStyle.css">
<link rel="stylesheet" href="http://localhost:9000/mybhc/resources/css/jquery-ui-1.12.1.css">

<script src="./BHC_files/jquery.min-1.12.4.js.다운로드"></script>
<script>window.jQuery || document.write('<script src="/assets/js/jquery.min.js"><\/script>')</script>
</head><body>
<div id="online_wrap">
    <header>
        <span class="head_tit">주문하기</span>
        <span class="_btn_orderSch" style="display: inline-block; margin: 10px; float: right;"><button class="m_btn_order" onclick="location.href=&#39;list.do&#39;;">주문조회</button></span>
    </header>

    <!-- 오른쪽 컨텐츠 -->
    <div id="right_wrap">
        <p><img src="http://localhost:9000/mybhc/resources/images/PC_img_main_banner_210527_01.jpg" onerror="this.src=&#39;/assets/images/pc_img01.jpg&#39;" width="100%" height="100%"></p>
        <div class="notice_wrap">
            <p class="notice_tit">대표전화</p>
            <p class="notice_tel">1670-8451</p>
            <p>주문가능시간 12:00 ~ 23:00</p>
        </div>
        <div class="notice_wrap">
            <p class="notice_tit">공지사항</p>
            <ul>
            <li class="notice_text _bulletIcon">매장상황 및 거리에 따라 배달비가 발생할 수 있습니다.</li><li class="notice_text _bulletIcon">온라인 및 e쿠폰 주문은 예약주문/예약배달이 불가합니다.</li><li class="notice_text _bulletIcon">제주지역 및 일부 매장은 판매 가격이 상이하여 추가금이 발생할 수 있습니다.</li><li class="notice_text _bulletIcon">e쿠폰에 명시되어 있는 상품으로만 교환 가능합니다.(타제품 교환불가)</li><li class="notice_text _bulletIcon">온라인 주문의 경우 16,000원 이상일때 가능합니다.</li><li class="notice_text _bulletIcon">주문가능 수량은 최대9개 입니다.</li></ul>
        </div>
    </div>
    <div id="left_wrap">
        <table style="width:430px !important; padding: 20px 0; margin-top: 200px;">
            <tbody>
            <tr>
                <td class="_txtAlign_C _pb_10"><img src="http://localhost:9000/mybhc/resources/images/img_package.jpg"></td>
                <td class="_txtAlign_C _pb_10"><img src="http://localhost:9000/mybhc/resources/images/img_deliy.jpg"></td>
            </tr>
            <tr>
                <td class="_txtAlign_C"><button class="btn package_btn" data-location-href="searchStore.do">포장주문</button></td>
                <td class="_txtAlign_C"><button class="btn oder_time_btn" data-location-href="searchAddress.do">배달주문</button></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<script type="text/javascript">
//<![CDATA[
    var serviceInfoJsonLocation = "/assets/data/serviceInfo.json";  // 서비스 기타정보 데이터
    var serviceDiv      = "BHCO";                          // 서비스 구분
    var noticeBoxObj    = $("div.notice_wrap");                     // 공지사항 영역 개체

    $(document).ready(function(){
        // windows size resize [pc ver. window resize]
        var strWidth = $("#online_wrap").outerWidth() + (window.outerWidth - window.innerWidth);
        var strHeight = $("#online_wrap").outerHeight() + (window.outerHeight - window.innerHeight);
        window.resizeTo(strWidth + 10, strHeight + 70);


        // 공지사항
        $.getJSON(serviceInfoJsonLocation, function(data){
            // 공지사항
            var noticeData  = eval("data." + serviceDiv + ".NOTICE");
            $(noticeData).each(function(index, item){
                noticeBoxObj.find("ul").append("<li>" + item.TITLE + "</li>");
            });
            noticeBoxObj.find("li").addClass("notice_text _bulletIcon");
        });

        $("button.package_btn, button.oder_time_btn").on("click", function(e){
            e.preventDefault();
           location.replace($(this).data("locationHref"));
        });
    });
//]]>
</script>

</body></html>
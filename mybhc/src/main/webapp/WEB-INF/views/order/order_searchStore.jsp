<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> BHC </title>
</head>
<link rel="icon" href="http://localhost:9000/mybhc/resources/images/favicon.ico">
<!-- New customization -->
<link rel="stylesheet" href="http://localhost:9000/mybhc/resources/css/bhc_order.css">
<link rel="stylesheet" href="http://localhost:9000/mybhc/resources/css/bhc_addStyle.css">
<link rel="stylesheet" href="http://localhost:9000/mybhc/resources/css/jquery-ui-1.12.1.css">
 
<script src="http://localhost:9000/mybhc/resources/js/jquery-3.6.0.min.js"></script>


<script>
 $(document).ready(function(){
	
	 //검색기능 ajax
	$("#search_btn").click(function (sid,sname,sadress,latitude,longitude){
		// alert($("#type").val());
		 $.ajax({
			type: 'GET',
		//	url : "admin_notice_list_search.do?type="+$("#type").val()+"&keyword="+$("#keyword").val(),
		//	url : "order_searchStore.do?keyword="+$("#keyword").val(),
			url : "order_searchStore_list.do?keyword="+$("#keyword").val(),
		
			 success : function(result){ 
				 alert(result);
				 
				 
				let data = JSON.parse(result);
					//alert(result);
				 
				//alert($("#nhit"));
				//테이블 초기화
				
				 var output = "<table class='_resultStoreListTable'>";
				
				
						output += "<tbody>"
				for(obj of data.list){
						output += "<tr><td>"
					//	output += "<span class='store_tit _storeName'>"+  obj.sname  +"<span class='_storeDistance'>ff</span></span>"
						output += " <span class='_storeChoiceTxt choice _pointer'>선택</span>"
						output += "<span class='store_tit _storeName'>"+  obj.sname  +"</span>"
						output += "<span class='store_txt _storeAddr'>"+  obj.sadress +"</span></td><td>"
						//output += "<a href='/mybhc/order_map.do?sid="+obj.sid+"'target='_blank'><img src='http://localhost:9000/mybhc/resources/images/img_pin.jpg'></span></a>"
						output += "<a href='/mybhc/order_map.do?sid="+obj.sid+"'target='_blank' onClick='wondow.open(this.href,'','width=520, height=415'); return false; '><img src='http://localhost:9000/mybhc/resources/images/img_pin.jpg'></span></a>"
						output += "</td></tr>"
				}
						output += "</tbody>";
						
						
				
	
				//3. 출력
				$("table._resultStoreListTable").remove();
				$("h1").after(output); 			 
			
			} 
		}) 
	});
	 
	
	});
 
</script>


<body>
<div id="online_wrap">
    <header>
        <span class="_m_all_10" style="float:left;"><a href="order.do"><button class="m_btn_order _prevBtn">이전</button></a></span>
        <span class="head_tit">매장검색</span>
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
    <!-- 왼쪽컨텐츠 -->
    <div id="left_wrap">
        <!-- st.키워드 검색 매장조회 -->
        <div id="searchBox" style="height:100%; min-height:600px;">
            <div class="tab_menu">
                <ul>
                    <li class="tab_menu_on _pointer"> 검색하기</li>
                    <li class="tab_menu_off _pointer _hide"> 현위치 인근매장</li>
                </ul>
            </div>
            <!-- 매장검색 -->
<form name="search-form" autocomplete="off">
<!-- <input type="hidden" id="address" name="address" value=""> -->

            <div id="search_wrap">
                <input type="text" name="keyword" id="keyword" class="input_search _schKeyword" placeholder="매장 검색하기" value="">
                <input type="button" class="search_btn" id ="search_btn"></input>
            </div>
</form>
<h1></h1>
            <!--- 검색 결과 테이블 -->
            <div class="_resultBox _hide">
                <table class="_resultStoreListTable">
                    <tbody>
                    <c:forEach var="vo" items="${list}"> 
                    	<tr><td>
						<span class="_storeChoiceTxt choice _pointer">선택</span></td><td>
						<span class="store_tit _storeName">{vo.sname}<span class="_storeDistance"></span></span>
						<span class="store_txt _storeAddr">{vo.sadress}</span>
						</td></tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- ed.키워드 검색 매장조회 -->

        <!-- st.선택매장 표시영역 -->
        <div id="selectStoreInfoBox" class="_hide">
            <div class="btn_layout">
                <button class="btn_store _storeReSelect">매장 재선택</button>
            </div>
            <!--- 검색 완료 테이블 -->
            <div class="result_table">
<form name="selectStoreForm" method="POST" action="https://online.bhc.co.kr/order/orderPacking.do">
<input type="hidden" name="storeCode" value="">
<input type="hidden" name="storeData" value="">
<input type="hidden" name="orderData" value="">
<input type="hidden" name="orderAddr" value="">
<input type="hidden" name="deliveryDistance" value="">
                <span class="result_tit">선택 매장</span>
                <table class="_storeInfo">
                    <colgroup>
                        <col style="width:*;">
                        <col style="width:10%;">
                    </colgroup>
                    <tbody>
                    <tr>
                        <td>
                            <span class="result_txt _selectStoreName"></span>
                            <span class="result_stxt _selectStoreAddr">
                                <br>
                            </span>
                            <span class="result_stxt _selectStorePhoneNum _mt_10"></span>
                        </td>
                        <td><img src="http://localhost:9000/mybhc/resources/images/img_pin.jpg" class="pin"></td>
                    </tr>
                    </tbody>
                </table>
                <div class="menu_btn_layout _txtAlign_C _mt_20">
                    <button class="btn_menu _btnSelectStore">매장 선택</button>
                </div>
</form>
            </div>
        </div>
        <!-- ed.선택매장 표시영역 -->
    </div>
</div>


<!-- st.loading -->
<div class="Layer_loading01 _hide">
    <div class="loading-container" style="margin: 40px auto; top:40%;">
        <div class="loading"></div>
        <div id="loading-text">loading</div>
    </div>
</div>
<!-- ed.loading -->




<div tabindex="-1" role="dialog" class="ui-dialog ui-corner-all ui-widget ui-widget-content ui-front no-close _dialogBox ui-dialog-buttons ui-draggable ui-resizable" aria-describedby="dialog" aria-labelledby="ui-id-1" style="display: none; position: absolute;"><div class="ui-dialog-titlebar ui-corner-all ui-widget-header ui-helper-clearfix ui-draggable-handle"><span id="ui-id-1" class="ui-dialog-title">알림</span><button type="button" class="ui-button ui-corner-all ui-widget ui-button-icon-only ui-dialog-titlebar-close" title="Close"><span class="ui-button-icon ui-icon ui-icon-closethick"></span><span class="ui-button-icon-space"> </span>Close</button></div><div id="dialog" class="ui-dialog-content ui-widget-content">
    <p></p>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-corner-all ui-widget">확인</button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div tabindex="-1" role="dialog" class="ui-dialog ui-corner-all ui-widget ui-widget-content ui-front no-close _dialogBox ui-draggable ui-resizable" aria-describedby="map_box" aria-labelledby="ui-id-2" style="display: none; position: absolute;"><div class="ui-dialog-titlebar ui-corner-all ui-widget-header ui-helper-clearfix ui-draggable-handle"><span id="ui-id-2" class="ui-dialog-title">위치보기</span><button type="button" class="ui-button ui-corner-all ui-widget ui-button-icon-only ui-dialog-titlebar-close" title="Close"><span class="ui-button-icon ui-icon ui-icon-closethick"></span><span class="ui-button-icon-space"> </span>Close</button></div><div id="map_box" style="width:500px; height:400px; overflow:hidden; padding:0px;" class="ui-dialog-content ui-widget-content">
    <div id="map" style="width:500px; height:400px;"></div>
</div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div></body>
</html>

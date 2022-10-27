<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title> BHC </title>
<link rel="icon" href="http://localhost:9000/mybhc/resources/images/favicon.ico">
<!-- New customization -->
<link rel="stylesheet" href="http://localhost:9000/mybhc/resources/css/bhc_order.css">
<link rel="stylesheet" href="http://localhost:9000/mybhc/resources/css/bhc_addStyle.css">
<link rel="stylesheet" href="http://localhost:9000/mybhc/resources/css/jquery-ui-1.12.1.css">

<script src="http://localhost:9000/mybhc/resources/js/jquery.min-1.12.4.js.다운로드"></script>
<script type="text/javascript" src="http://localhost:9000/mybhc/resources/js/jquery.min.js.다운로드"></script>
<script type="text/javascript" src="http://localhost:9000/mybhc/resources/js/jquery-ui.min.js.다운로드"></script>
<script type="text/javascript" src="http://localhost:9000/mybhc/resources/js/common.js.다운로드"></script>
</head>

<body>
<div id="online_wrap">
    <header>
        <span class="_m_all_10" style="float:left;"><button class="m_btn_order _prevBtn">이전</button></span>
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
<form name="schForm">
<input type="hidden" id="address" name="address" value="">

            <div id="search_wrap">
                <input type="text" name="schKeyword" class="input_search _schKeyword" placeholder="매장 검색하기" value="">
                <button type="button" class="search_btn">검색</button>
            </div>
</form>
            <!--- 검색 결과 테이블 -->
            <div class="_resultBox _hide">
                <table class="_resultStoreListTable">
                    <tbody>
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
<script type="text/javascript" src="http://localhost:9000/mybhc/resources/js/sdk.js.다운로드"></script>
<script type="text/javascript">
//<![CDATA[
    var loadingObj  = $("div.Layer_loading01");                     // 로딩 영역
    var tabNo   = 0;                                                // 탭 메뉴 선택 INDEX
    var schValData = { lat:"", lng:"", schKeyword:"", vicinityResultData:"", keywordResultData:"" };
    var schVicinityStoreData   = "";                                // 인근매장 결과

    var lat = "";
    var lng = "";
    var geoLocationResult;                                          // GEO LOCATION RESULT

    var serviceInfoJsonLocation = "/assets/data/serviceInfo.json";  // 서비스 기타정보 데이터
    var noticeBoxObj    = $("div.notice_wrap");                     // 공지사항 영역 개체
    var serviceDiv      = "BHCO";                          // 서비스 구분
    var orderDiv        = "PACKING";                            // 주문 구분

    var objStoreInfoBox = $("div#selectStoreInfoBox");
    $(document).ready(function(){
        // Dialog Setting
        $( "#dialog" ).dialog({
            autoOpen: false
            , modal : true
            , width : 500
            , dialogClass : "no-close _dialogBox"
            , buttons : [ {
                text: "확인",
                click: function() {
                    $(this).dialog("close");
                }
            }]
        });
        $( "#map_box" ).dialog({
            autoOpen: false
            , modal : true
            , width : 500
            , height : 400
            , dialogClass : "no-close _dialogBox"
        });

        // Geolocation API에 액세스할 수 있는지를 확인 및 결과 조회.
        geoLocationResult   = fnGeoLocation();
        if (geoLocationResult.statusCode == "200") {
            lat = geoLocationResult.lat;
            lng = geoLocationResult.lng;
        }

        // 공지사항
        $.getJSON(serviceInfoJsonLocation, function(data){
            // 공지사항
            var noticeData  = eval("data." + serviceDiv + ".NOTICE");
            $(noticeData).each(function(index, item){
                noticeBoxObj.find("ul").append("<li>" + item.TITLE + "</li>");
            });
            noticeBoxObj.find("li").addClass("notice_text _bulletIcon");
        });

        // button event setting
        $("button").on("click", function(e){
            e.preventDefault();
        });
        $("input._schKeyword").on("keypress", function(e){
            if (event.keyCode == 13) {
                e.preventDefault();
                fnSearchStore();
            }
        });
        /*-- 탭 버튼 --*/
        $("div.tab_menu li").on("click", function(){
            var clickObj    = $(this);
            var clickObjParent  = clickObj.closest("ul");
            var clickObjIndex   = clickObjParent.find("li").index(this);

            tabNo   = clickObjIndex;
            clickObjParent.find("li").removeClass("tab_menu_on").addClass("tab_menu_off");
            clickObj.addClass("tab_menu_on");
            $("#search_wrap").show();
            $("form[name=\"schForm\"]")[0].reset();
            // 검색결과 비우기
            $("table._resultStoreListTable tbody").empty();
            // 검색결과 추가 style삭제처리.
            $("div._resultBox").removeClass("_noSchForm");

            // 주변 매장검색
            if (clickObjIndex == 1) {
                // 검색결과 div height값 변경 style추가.
                $("div._resultBox").addClass("_noSchForm");
                // 검색 폼 숨김
                $("#search_wrap").hide();
                if (lat === "" || lng === "") {
                    fnMsgDialog("위치정보를 가져올 수 없습니다.<br />검색하기를 이용하여 매장을 검색해 주세요.");
                    return;
                } else {
                    fnSearchStore();
                }
            }
        });
        /*-- 검색 버튼 --*/
        $("button.search_btn").on("click", fnSearchStore);
        /*-- 매장 재검색 버튼 --*/
        $("button._storeReSelect").on("click", function(){
            objStoreInfoBox.toggle("slide", [], 500).find("table span").empty();
            objStoreInfoBox.find("form[name=\"selectStoreForm\"]")[0].reset();
        });
        /*-- 매장선택 버튼 --*/
        $("button._btnSelectStore").on("click", function(){
            var objForm = $("form[name=\"selectStoreForm\"]");
            var orderData = objForm.serializeObject();
            orderData.serviceDiv    = serviceDiv;
            orderData.orderDiv      = orderDiv;
            objForm.find("input[name=\"orderData\"]").val(JSON.stringify(orderData));
            objForm.submit();
        });
        /*-- 이전 버튼 --*/
        $("button._prevBtn").on("click", function(){
            location.replace("orderSelect.do");
        });
    });
    // 매장검색
    function fnSearchStore() {
        var sendPath    = "searchKeywordStoreList.do";
        // 키워드검색
        if (tabNo == 0 && $("input[name=\"schKeyword\"]").val().trim() == "") {
            fnMsgDialog("매장명을 입력해주세요.");
            return;
        }
        if (tabNo == 0) // 키워드 검색
            schValData.schKeyword = $("input[name=\"schKeyword\"]").val().trim();

        if (tabNo == 1) // 주변 매장검색
            sendPath    = "searchVicinityStoreList.do";

        var sendData    = $("form[name=\"schForm\"]").serializeObject();
        sendData.lat    = lat;
        sendData.lng    = lng;

        fnSendData("post", sendData, "json", sendPath, "fnSearchResult", loadingObj);
    }
    // 검색결과 결과표시 처리.
    function fnSearchResult() {
        var resultData  = arguments[0];
        var resultObj   = $("div._resultBox");

        if(resultData.count == "0"){
            fnMsgDialog("[" + schValData.schKeyword + "]" + "으로 검색이 불가능합니다. 매장명을 확인 후 입력해주세요.");
        } else {
            if (tabNo == 1) {   // 주변 매장검색
                schVicinityStoreData   = resultData;
                schValData.vicinityResultData = resultData;
                $("input[name=\"address\"]").val(resultData.address);
            } else {
                schValData.keywordResultData = resultData;
            }
        }

        resultObj.show().find("tbody").empty();
        if (resultData.count == 0) {
            resultObj.find("tbody").append("<tr><td colspan=\"3\" class=\"tex_store _tableResultNoData _borderBottom\">찾으실 매장명을 검색하세요.</td></tr>");
        } else {
            var resultTemplate   = "<tr><td><span class=\"_storeChoiceTxt\"></span></td><td><span class=\"store_tit _storeName\"> <span class=\"_storeDistance\"></span></span> <span class=\"store_txt _storeAddr\"></span></td><td></td></tr>";

            $(resultData.data).each(function(index, item){
                var orderReceipt    = "N";

                if (item.매장주문가능여부 == "Y"/* && item.포장여부 == "Y"*/)
                    orderReceipt    = "Y";

                resultObj.find("tbody").append(resultTemplate);
                resultObj.find("tbody tr").eq(index).data({
                    "storeCode": item.매장코드
                    , "orderReceipt" : orderReceipt
                    , "lat" : item.Y_AXIS
                    , "lng" : item.X_AXIS
                });
                resultObj.find("tbody tr").eq(index).find("._storeChoiceTxt").addClass((orderReceipt == "Y") ? "choice _pointer" : "store_cancell").text((orderReceipt == "Y") ? "선택" : "선택불가");
                resultObj.find("tbody tr").eq(index).find("._storeName").prepend(item.매장표시명);
                resultObj.find("tbody tr").eq(index).find("._storeDistance").text((item.거리 == undefined || item.거리 == "") ? "" : item.거리.toFixed(2) + " km");
                resultObj.find("tbody tr").eq(index).find("._storeAddr").text(item.표시주소);
                resultObj.find("tbody tr").eq(index).find("td:last").addClass((orderReceipt == "Y") ? "_on" : "_off").on("click", function(){
                    var clickObj = $(this);
                    var parentNode = clickObj.closest("tr");
                    fnMapDisplay(parentNode.data("lat"), parentNode.data("lng"));
                });
            });
            resultObj.find("tbody span._storeChoiceTxt").on("click", function(){
                var clickObjParent  = $(this).closest("tr");
                var clickIdx        = clickObjParent.closest("tbody").find("span._storeChoiceTxt").index(this);
                if (clickObjParent.data("storeCode") != "" && clickObjParent.data("orderReceipt") == "Y") {
                    // store info data
                    var storeInfoData = "";
                    if (tabNo == 0)
                        storeInfoData = schValData.keywordResultData.data[clickIdx];
                    else
                        storeInfoData = schValData.vicinityResultData.data[clickIdx];
                    fnSelectStoreInfoResult(storeInfoData);
                }
            });
        }
    }

    // 선택매장 정보표시처리.
    function fnSelectStoreInfoResult()
    {
        var storeData   = arguments[0];
        var targetObj   = objStoreInfoBox.find("table._storeInfo");
        var storeAddr   = "";
        storeAddr   += "<label class=\"_fontWeight_B\" style=\"display:inline-block; width:110px;\">[ 지번주소 ] : </label>";
        storeAddr   += (storeData.우편주소 != undefined) ? storeData.우편주소 : "";
        storeAddr   += (storeData.상세주소 != undefined) ? " " + storeData.상세주소 : "";
        storeAddr   += "<br />";
        storeAddr   += "<label class=\"_fontWeight_B\" style=\"display:inline-block; width:110px;\">[ 도로명주소 ] : </label>";
        storeAddr   += (storeData.도로명주소 != undefined) ? storeData.도로명주소 : "";
        storeAddr   += (storeData.도로명주소상세 != undefined) ? " " + storeData.도로명주소상세 : "";

        // 정보표시 화면 이동처리.
        objStoreInfoBox.toggle("slide", [], 500);
        // 매장정보 표시처리.
        objStoreInfoBox.find("input[name=\"storeCode\"]").val(storeData.매장코드);
        objStoreInfoBox.find("input[name=\"storeData\"]").val(JSON.stringify(storeData));
        objStoreInfoBox.find("input[name=\"orderAddr\"]").val(storeData.표시주소);
        objStoreInfoBox.find("input[name=\"deliveryDistance\"]").val(0);

        targetObj.find("._selectStoreName").text(storeData.매장표시명);
        targetObj.find("._selectStoreAddr").html(storeAddr).css("line-height", "1.8");
        targetObj.find("._selectStorePhoneNum").text(fnPhoneFomatter(storeData.전화번호));
        targetObj.find("td:last").addClass("_pointer").on("click", function(){
            fnMapDisplay(storeData.Y_AXIS, storeData.X_AXIS);
        });
    }

    function fnMapDisplay() {
        var lat = arguments[0];
        var lng = arguments[1];
        $("#map_box").dialog("open");
        daum.maps.load(function() {
            var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
            var options = { //지도를 생성할 때 필요한 기본 옵션
                center: new daum.maps.LatLng(lat, lng), //지도의 중심좌표.
                level: 3 //지도의 레벨(확대, 축소 정도)
            };
            var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
            var markerPosition  = new daum.maps.LatLng(lat, lng);
            var marker = new daum.maps.Marker({
                position: markerPosition
            });
            marker.setMap(map);
        });
    }
//]]>
</script>


<div tabindex="-1" role="dialog" class="ui-dialog ui-corner-all ui-widget ui-widget-content ui-front no-close _dialogBox ui-dialog-buttons ui-draggable ui-resizable" aria-describedby="dialog" aria-labelledby="ui-id-1" style="display: none; position: absolute;"><div class="ui-dialog-titlebar ui-corner-all ui-widget-header ui-helper-clearfix ui-draggable-handle"><span id="ui-id-1" class="ui-dialog-title">알림</span><button type="button" class="ui-button ui-corner-all ui-widget ui-button-icon-only ui-dialog-titlebar-close" title="Close"><span class="ui-button-icon ui-icon ui-icon-closethick"></span><span class="ui-button-icon-space"> </span>Close</button></div><div id="dialog" class="ui-dialog-content ui-widget-content">
    <p></p>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-corner-all ui-widget">확인</button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div tabindex="-1" role="dialog" class="ui-dialog ui-corner-all ui-widget ui-widget-content ui-front no-close _dialogBox ui-draggable ui-resizable" aria-describedby="map_box" aria-labelledby="ui-id-2" style="display: none; position: absolute;"><div class="ui-dialog-titlebar ui-corner-all ui-widget-header ui-helper-clearfix ui-draggable-handle"><span id="ui-id-2" class="ui-dialog-title">위치보기</span><button type="button" class="ui-button ui-corner-all ui-widget ui-button-icon-only ui-dialog-titlebar-close" title="Close"><span class="ui-button-icon ui-icon ui-icon-closethick"></span><span class="ui-button-icon-space"> </span>Close</button></div><div id="map_box" style="width:500px; height:400px; overflow:hidden; padding:0px;" class="ui-dialog-content ui-widget-content">
    <div id="map" style="width:500px; height:400px;"></div>
</div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div></body></html>
</html>
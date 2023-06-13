<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>액세서리 상세 페이지</title>
<style>
     .btn-solid-after {
        background-color: #e22454; 
        color: #fff; 
        border-color: #e22454; 
    }
    .btn-outline-custom {
        background-color: transparent;
        color: gray; 
        border-color: gray; 
    }
    
    .btn-outline-custom:hover {
        background-color: #e22454; 
        color: #fff; 
        border-color: #e22454; 
    }
    
    .btn-outline-custom:focus {
        background-color: #e22454; 
        color: #fff; 
    }

</style>

<style>
    /* 제품 상세내용 CSS */
    .point-color {
        color: #f55500 !important;
    }

    .p_description .block-link {
        display: block;
        font-size: 0;
    }

    .p_description .block-link img {
        display: block;
        width: 100%;
    }

    .p_description .desc-group {
        padding: 30px 0;
    }

    .p_description .desc-group p.line-desc {
        text-align: center;
        font-size: 17px;
        line-height: 1.4;
        letter-spacing: -.05em;
    }

    .p_description .desc-group p.line-desc .line-tit {
        font-size: 28px;
    }

    .p_description .desc-group p.line-desc+p.line-desc {
        margin-top: 20px;
    }

    .p_description h3.h3-tit {
        margin-top: 65px;
        margin-bottom: 15px;
        text-align: left;
        line-height: 1.3;
        color: #000;
        font-size: 34px;
        font-weight: normal;
        word-break: keep-all;
    }

    .p_description h3.h3-tit:first-child {
        margin-top: 0;
    }

    .p_description h3.h3-tit span {
        color: #f55500;
    }

    .p_description h3.h3-tit.single {
        margin-bottom: 40px;
    }

    .p_description p.sub-description {
        margin: 20px 0 40px;
        text-align: left;
        font-size: 16px;
        color: #000;
        line-height: 1.4;
        word-break: keep-all;
    }

    .p_description p.sub-description span {
        color: #f55500;
    }

    .p_description .exclamation_tit {
        margin-top: 13px;
        font-size: 14px;
        font-weight: normal;
        color: #444;
        letter-spacing: 0;
    }

    .p_description p.exclamation,
    .p_description ul.exclamation {
        margin-top: 10px !important;
    }

    .p_description p.exclamation,
    .p_description ul.exclamation li {
        margin-top: 5px;
        padding-left: 24px;
        padding-bottom: 2px;
        font-size: 14px;
        color: #444;
        background: url("https://cdnw.shop.tworld.co.kr/public/img/event_2019/0220/icon_Web/info1.png") 0 0 no-repeat;
    }

    .p_description div.img-section>img {
        display: block;
        vertical-align: top;
    }

    .p_description {
        max-width: 770px;
        margin: 0 auto;
        letter-spacing: -0.05em;
    }

    /* 테이블 보정 */
    .p_description .tbl_row {
        width: 770px;
        margin-top: 40px !important;
    }

    .p_description .tbl_row tr th {
        font-weight: bold;
        padding-left: 10px;
        padding-right: 10px;
    }

    .p_description .tbl_row tr td {
        padding-left: 10px;
        padding-right: 10px;
    }

    /* 주의사항, 유의사항 */
    .p_description .feature_notice_area {
        padding: 29px 60px 27px 30px;
        border: 1px solid #ccc;
        letter-spacing: -1px;
        text-align: left;
    }

    .p_description .feature_notice_area.mt {
        margin-top: 3rem;
    }

    .p_description .feature_notice_area .tit {
        height: 53px;
        padding: 0 0 2px 75px;
        font-weight: bold;
        color: #333;
        font-size: 24px;
        line-height: 53px;
        background: url('https://cdnw.shop.tworld.co.kr/pimg/webeditor/201802/21/20180221121351_file0.jpg') 0 50% no-repeat;
    }

    .p_description .feature_notice_area ul.noticeList {
        padding-left: 75px;
    }

    .p_description .feature_notice_area ul.noticeList>li {
        position: relative;
        padding-left: 8px;
        margin-top: 6px;
        color: #666;
        font-size: 16px;
        line-height: 1.5;
    }

    .p_description .feature_notice_area ul.noticeList.num>li {
        list-style-type: decimal;
    }

    .p_description .feature_notice_area ul.noticeList>li:before {
        content: '';
        position: absolute;
        top: 11px;
        left: 0;
        height: 3px;
        width: 3px;
        border-radius: 50%;
        background-color: #8c8c8c;
    }

    .p_description .feature_notice_area ul.noticeList.num>li:before {
        display: none;
    }

    .p_description .feature_notice_area ul.noticeList>li:first-child {
        margin-top: 3px;
    }

    .p_description .feature_notice_area sup {
        position: relative;
        top: 2px;
        display: inline-block;
        margin-top: -5px;
    }

    .p_description .feature_notice_area .link_txt {
        color: #2e93fa;
        text-decoration: underline;
    }

    .info-section {
        border: 1px solid #e6e6e6;
        border-width: 0 1px 1px 1px;
        font-size: 16px;
        color: #000;
        line-height: 1.6;
    }

    .info-section ul li:first-child {
        border-top: none;
    }

    .info-section ul li {
        margin: 0 29px;
        padding: 40px 15px;
        border-top: 1px solid #e6e6e6;
        text-indent: -16px;
    }

    .info-section ul li a {
        color: #489bdf;
        text-decoration: underline;
    }

    .p_description .img-section {
        position: relative;
    }

    .p_description .img-section .tp_btn {
        position: absolute;
        background: transparent;
        z-index: 1
    }

    .p_description .img-section .tp_btn.share-css-clear {
        right: auto;
        top: auto;
    }

    .p_description .img-section .tp_btn.show {
        background: rgba(244, 255, 52, .4)
    }

    .p_description button.tp_btn {
        padding: 0;
        color: transparent;
        background-color: transparent;
        border: none;
    }

    /*안내사항*/
    .p_description .feature_notice_area .guide {
        padding-left: 75px;
    }

    .p_description .feature_notice_area .tit-guide {
        height: 53px;
        padding: 0 0 2px 75px;
        font-weight: bold;
        color: #333;
        font-size: 24px;
        line-height: 53px;
        background: url('https://cdnw.shop.tworld.co.kr/pimg/webeditor/201802/21/20180221121351_file0.jpg') 0 50% no-repeat;
    }

    .p_description .feature_notice_area .guide p {
        position: relative;
        margin-top: 3px;
        font-size: 16px;
        line-height: 1.5;
    }

    .p_description .feature_notice_area .guide strong {
        position: relative;
        display: block;
        margin-top: 15px;
        font-size: 16px;
        line-height: 1.5;
    }

    .p_description .feature_notice_area .guide p.bullet {
        position: relative;
        padding-left: 8px;
        margin-top: 3px;
        font-size: 16px;
        line-height: 1.5;
    }

    .p_description .feature_notice_area .guide p.bullet:before {
        content: '';
        position: absolute;
        top: 11px;
        left: 0;
        height: 3px;
        width: 3px;
        border-radius: 50%;
        background-color: #8c8c8c;
    }

    /*느낌표마크 안내*/
    .p_description .exclamation-guide {
        background: #f5f5f5;
        padding: 20px 32px;
    }

    .p_description .exclamation-guide .desc {
        font-size: 18px;
        line-height: 26px;
        min-height: 28px;
        font-weight: normal;
        color: #ef4b49;
        padding: 4px 0 0 42px;
        background: url(https://cdnw.shop.tworld.co.kr/pimg/plan_editor/201904/18883263759870406.png) 0 50% no-repeat;
    }

    .p_description .exclamation-guide .h4-tit {
        font-size: 20px;
        font-weight: bold;
        height: 40px;
        color: #ef4b49;
        padding: 4px 0 0 42px;
        background: url("https://cdnw.shop.tworld.co.kr/pimg/plan_editor/201904/18883263759870406.png") 0 0 no-repeat;
    }

    .p_description .exclamation-guide p,
    .p_description .exclamation-guide sup {
        padding-left: 40px;
    }

    .p_description .exclamation-guide p {
        font-size: 16px;
        line-height: 1.3;
    }

    .p_description .exclamation-guide sup {
        font-size: 14px;
        line-height: 1.5;
        color: #8d8d8d;
        margin-top: 10px;
        display: block;
    }

    /* 특별한 약속 */
    .package-area {
        padding: 40px 30px;
        background-color: #f9f9f9;
    }

    .package-area ul li:first-child strong {
        padding-top: 0;
    }

    .package-area ul li strong {
        display: block;
        padding-top: 30px;
        padding-bottom: 10px;
        font-size: 24px;
        font-weight: normal;
        line-height: 1.4;
    }

    .package-area strong span {
        color: #ea002c;
    }

    .package-area p {
        padding-left: 15px;
        font-size: 16px;
        line-height: 1.4;
    }

    .p_description .img-section .tp_btn {
        position: absolute;
        background: transparent;
        z-index: 1
    }

    .p_description .img-section .tp_btn.share-css-clear {
        right: auto;
        top: auto;
    }

    .p_description .img-section .tp_btn.show {
        background: rgba(244, 255, 52, .4)
    }

    @media (max-width:736px) {
        .p_description {
            width: 100%;
        }

        .p_description .desc-group {
            padding: 20px 0;
        }

        .p_description .desc-group p.line-desc {
            font-size: 14px;
        }

        .p_description .desc-group p.line-desc .line-tit {
            font-size: 20px;
        }

        .p_description .desc-group p.line-desc+p.line-desc {
            margin-top: 12px;
        }

        .p_description .feature_notice_area {
            padding: 15px 15px 15px 25px;
        }

        .p_description .feature_notice_area .tit {
            height: 26px;
            padding: 2px 34px 0;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
            font-size: 18px;
            line-height: 24px;
            background: url('https://cdnw.shop.tworld.co.kr/pimg/webeditor/201802/21/20180221121351_file0.jpg') 0 50% no-repeat;
            background-size: 26px 26px;
        }

        .p_description .feature_notice_area ul.noticeList {
            padding-left: 0;
        }

        .p_description .feature_notice_area ul.noticeList>li {
            font-size: 13px;
        }

        .p_description .feature_notice_area ul.noticeList>li:before {
            top: 7px;
            left: 0;
        }

        .p_description .feature_notice_area .tit-guide {
            height: 30px;
            padding: 2px 0 0 34px;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
            font-size: 15px;
            line-height: 24px;
            background: url('https://cdnw.shop.tworld.co.kr/pimg/webeditor/201802/21/20180221121351_file0.jpg') 0 50% no-repeat;
            background-size: 26px 26px;
        }

        .p_description .feature_notice_area .guide {
            padding-left: 0;
        }

        .p_description .feature_notice_area .guide p,
        .p_description .feature_notice_area .guide strong,
        .p_description .feature_notice_area .guide p.bullet {
            font-size: 13px;
        }

        .p_description .feature_notice_area .guide p.bullet {
            word-break: keep-all;
        }

        .p_description .feature_notice_area .guide strong {
            margin-top: 8px;
        }

        .p_description .feature_notice_area .guide p.bullet:before {
            top: 7px;
            left: 0;
        }

        .p_description h3.h3-tit {
            font-size: 26px;
            line-height: 1.2;
        }

        .p_description p.exclamation,
        .p_description ul.exclamation li {
            font-size: 13px;
        }

        .p_description p.sub-description,
        .info-section {
            font-size: 15px;
        }

        .p_description br {
            display: none;
        }

        .p_description br.important {
            display: block;
        }

        .p_description .tbl_row {
            width: 100%;
        }

        .info-section ul li {
            margin: 0 15px;
        }

        .p_description .exclamation-guide .h4-tit {
            font-size: 15px;
            height: 35px;
            background-size: 26px 26px;
            padding: 4px 0 0 34px;
        }

        .p_description .exclamation-guide {
            padding: 15px;
        }

        .p_description .exclamation-guide p,
        .p_description .exclamation-guide sup {
            padding-left: 0;
        }

        .p_description .exclamation-guide p {
            font-size: 13px;
        }

        .p_description .exclamation-guide sup {
            font-size: 12px;
        }

        .p_description .mt65 {
            margin-top: 40px !important;
        }

        .package-area {
            padding: 30px 20px;
        }

        .package-area ul li strong {
            padding-top: 15px;
            padding-bottom: 10px;
            font-size: 18px;
        }

        .package-area p {
            padding-left: 0;
            font-size: 15px;
        }
    }

    .p_description .mt10 {
        margin-top: 10px !important;
    }

    .p_description .mt20 {
        margin-top: 20px !important;
    }

    .p_description .mt40 {
        margin-top: 40px !important;
    }

    .p_description .mt65 {
        margin-top: 65px !important;
    }

    /* .section1 {
        background-color: snow;
    } */

    .tbl_row {
        border: solid 1px black;
    }

    .accordion-group-header.side-type {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .-mb-8n-2 {
        margin-bottom: 16px !important;
    }

    .product-option-item.color .product-color .color-chips .c-ick-var {
        position: relative;
        margin-right: 12px;
        vertical-align: middle;
    }

    .c-ick-var {
        display: inline-block;
        position: relative;
    }

    .product-option-item.color .product-color .color-chips .c-ick-var .label {
        overflow: hidden;
        width: 26px;
        height: 26px;
        text-indent: -999px;
        border-radius: 100%;
        -webkit-box-shadow: inset 0 0 1px rgba(0, 0, 0, 0.4);
        box-shadow: inset 0 0 1px rgba(0, 0, 0, 0.4);
    }

    .product-option-item.color .product-color .color-chips .c-ick-var.checked:before {
        position: absolute;
        top: -4px;
        left: -4px;
        width: 32px;
        height: 32px;
        border: 1px solid #000;
        border-radius: 100%;
        content: "";
    }

    .c-ick-var input[type=checkbox], .c-ick-var input[type=radio] {
        position: absolute;
        bottom: 0;
        left: 0;
        -ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
        filter: alpha(opacity=0);
        opacity: 0;
        width: 0;
        height: 0;
    }

    .product-option-item.color .product-color:after {
        clear: both;
        display: block;
        content: "";
    }
    
    .desc-info dd + dt {
        position: relative;
        padding-left: 13px;
    }
    
    .desc-info dd + dt::before {
        content: "";
        position: absolute;
        left: 6px;
        top: 2px;
        width: 1px;
        height: 12px;
        background-color: #e1e1e1;
    }

    [type=reset], [type=submit], button, html [type=button] {
        cursor: pointer;
        -webkit-appearance: button;
    }
    
    .colorGroup{
        width: 30px;
        height: 30px;
        border-radius: 50%;
        border: gray 2px solid;
    }                                    
</style> <!-- // admin 소스 -->

</head>

<body class="theme-color2 light ltr">
<c:import url="../temp/header.jsp"></c:import>
    <!-- Shop Section start -->
    <section class="section1">
        <div class="container">
            <div class="row gx-4 gy-5">
                <div class="col-lg-12 col-12">
                    <div class="details-items">
                        <div class="row g-4">
                            <div class="col-md-6">
                                <div class="ratio_portrait">
                                    <div class="row g-sm-3 g-2">
                                        <div class="col-6">
                                            <div>
                                                <img src="assets/images/fashion/galaxy21u4.png"
                                                    class="img-fluid bg-img blur-up lazyload" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="cloth-details-size ">
                                    <div class="admin-update-delete d-flex justify-content-end">
                                        <a href="zproduct_detail_edit.html" class="me-3">수정</a>
                                        <a href="javascript:void(0)" data-bs-toggle="modal"
                                                    data-bs-target="#productdel">삭제</a>
                                    </div>
                                    <div class="brand" style="font-size: 27px; color: gray;">
                                        Samsung                                        
                                    </div>
                                    <div class="details-image-concept mt-0" style="font-size: 35px;">
                                        갤럭시 S21 울트라 케이스
                                    </div>
                                    <div>
                                        <h3 class="mt-3 ">출고가</h3>
                                    </div>
                                    <p>
                                        <span class="price-detail theme-color fw-bold">15,000</span>
                                        <span class="unit">원</span>
                                    </p>

                                    <div class="product-option-item color">
                                        <div class="option-title-area">
                                            <h3 class="option-title mb-2">색상</h3>
                                        </div>
                                        <div class="color-types">
                                            <ul class="color-variant mb-5">
                                                <li class="bg-white  border boder-1 selected"></li>
                                                <li class="bg-light1"></li>
                                                <li class="bg-blue1"></li>
                                                <li class="bg-black1"></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <td class="cart-content-wrap" >
                                        <div class="col-md-10 d-flex ">
                                            <div class="col-md-3" style="color: #7e7e7e;">
                                                <p>선택한 옵션</p>
                                            </div>
                                            <div class="col-md-7" style="color: black;">
                                                <h5>화이트</h5>
                                            </div>                                            
                                <!-- 수량 버튼 -->
                                            <div class=" d-flex quantity-wrapper " style="padding:5px 0px; justify-content: center; margin-top:-10px; margin-left:-150px;">
                                                <button class="btn quantity-left-minus" style="height:5px; width:5px; padding:10px; margin-top:-6px; ">-</button>
                                                <span class="input-wrapper">
                                                    <input type="text" class="input-number text-center" style="width: 35px; padding:5px 5px; border:1px solid #c7c7c5; border-radius: 5px;"  value="1">
                                                </span>
                                                <button class="btn quantity-right-plus" style="height:5px; margin-top:-6px; padding:10px 5px; ">+</button>
                                            </div>
                                            <div>
                                                <p class="price theme-color2 fs-4 d-flex" id="subscriptionPrice" style="letter-spacing: -0.5px; color: #000; margin-left:120px;">
                                                    15,000 <span class="mt-1 mx-1" style="color:black; font-size:15px; font-weight: 400;">원</span>
                                                </p>
                                            </div>
                                            <div class="mx-5">
                                                <td class="align-middle">
                                                    <div>
                                                        <a href="javascript:void(0)">
                                                            <i class="fas fa-times"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                            </div>
                                        </div>
                                    </td>
                                        <div class="product-option-item" style="position: relative; padding: 16px 0 30px 100px; border-top: 1px solid #d3d3d3;">
                                            <div class="option-title-area mt-3" style="position: absolute; top: 25px; left: 0;">
                                                <div class="option-title" style="display: inline-block; color: #5a5a5a; font-size: 20px; font-weight: 400;">
                                                    총 결제금액
                                                </div>
                                            </div>
                                            <div class="product-option-item compare mt-3" id="subscriptionInfo">
                                                <dl class="compare-inner" style="display: block; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px; margin: 0; padding: 0;">
                                                    <dt class="compare-title">
                                                        <div class="inner">
                                                            <div class="info">
                                                            <div class="data" style="position: absolute; top: 35px; right: 0; text-align: right;">
                                                                <h2 class="price theme-color" id="subscriptionPrice" style="letter-spacing: -0.2px; display: block; margin-top: 6px; color: #000; font-weight: 700;">
                                                                    15,000 <span style="color:black; font-size:20px;">원</span>
                                                                </h2>
                                                            </div>
                                                            </div>
                                                        </div>
                                                    </dt>            
                                                </dl>  
                                                <div class="btn-area" style="position: relative; padding-top:70px; float: center;"> 
                                                    <div class="product-buttons"> 
                                                        <a href="javascript:void(0)" data-bs-toggle="modal"
                                                    data-bs-target="#cartinto">
                                                        <button type="button" class="btn btn-outline-custom btn-spacing me-1" style="margin-left:-100px;">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="34" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart pe-1"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                                                        </button> </a>                    
                                                    <button type="button" class="btn btn-solid" id="orderBtn" style= "width: 700px; height: 54px; font-size: 18px; display: inline-block; padding: 0 10px; text-align: center; ">주문하기</button>
                                                </div> 
                                                </div>                                                      
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            
        
                <div class="col-12">
                    <div class="cloth-review">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab"
                                    data-bs-target="#desc" type="button">상품정보</button>

                                <button class="nav-link" id="nav-question-tab" data-bs-toggle="tab"
                                    data-bs-target="#question" type="button">상품문의</button>

                                <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
                                    data-bs-target="#review" type="button">상품리뷰</button>
                            </div>
                        </nav>

                        <div class="tab-content" id="nav-tabContent">
                            <div id="desc" class="tab-pane fade show active">
									<div class="p_description">
	                                    ${directVO.directContents}
	                                </div>  
                            </div>

                            <!-- 상품 문의 nav tap -->
							<div class="tab-pane fade" id="question">
							    <div class="accordion-group-header side-type mb-4">
							    <c:set var="qnaCount" value="${fn:length(qnaList)}" />
							        <h2 class="left title m-0">상품 문의 (${qnaCount})</h2>
							        <div class="d-flex justify-content-end">
							        	<button class="btn btn-solid-default btn-sm fw-bold me-4" style="margin-top:-25px;" data-bs-toggle="modal"
                                         data-bs-target="#addQna">문의 작성</button>
                                    </div>
                                </div>
                                	<div class="container mb-5">
                                	<c:forEach items="${qnaList}" var="qna">
                                    	<div class="category-option" data-qna-num="${qna.num}" data-qna-member="${qna.memberNum}" data-qna-state="${qna.state}">
                                        	<div class="accordion category-name" id="accordionExample">
                                            	<div class="accordion-item category-rating">
                                                	<h2 class="accordion-header"  id="headingThree" style="padding:0px;">
                                                    	<button class="accordion-button" style="background-color:#fff; padding:0px;" type="button" data-bs-toggle="collapse"
                                                       	 data-bs-target="#collapseThree">
                                                        	<div class="d-flex col-10">
																
																<c:if test="${qna.state == 0}">
																<div class="col-2 mx-2" style="color:gray;">
                                                           			<span>답변대기</span>
                                                           		</div>	
                                                           		</c:if>	
                                                           		<c:if test="${qna.state == 1}">
                                                           		<div class="col-2 mx-2 theme-color">
                                                           			<span>답변완료</span>
                                                           		</div>
                                                           		</c:if>	
                                                        		
                                                       			<h5 class="col-7 me-5 ellipsis">${qna.contents}</h5> 
                                                       			<c:set var="username" value="${fn:substringBefore(qna.email, '@')}" /> 
                                                       				<span class="user col-1 me-5 fw-bold" >${username}</span>
                                                       				<fmt:formatDate value="${qna.regDate}" pattern="yyyy/MM/dd" var="formattedDate" />
																	<span style="font-weight:400;">${formattedDate}</span>
                                                    		</div>  
                                                    	</button>
                                                	</h2>
                                                	
                                                	<div id="collapseThree" class="accordion-collapse collapse"
                                                    	aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                    	<div class="accordion-body">
                                                        	<div class="card">
                                                            	<div class="card-body"><!----><!---->                                                            
	                                                                <span class="cate col-1">
	                                                                    <span class="fw-bold text-danger">Q</span> 
	                                                                </span>
	                                                                <c:if test="${empty qna.reply && memberVO.memberNum eq qna.memberNum}">
	                                                                <div class="member-update-delete d-flex justify-content-end">
								                                        <a href="javascript:void(0)" class="me-3 qnaUpdate" data-bs-toggle="modal"
				                                                            data-bs-target="#updateQna" id="qnaUpdate${qna.num}"
				                                                            data-qna-num="${qna.num}">수정</a>
								                                        <a href="javascript:void(0)" data-bs-toggle="modal"
						                                                    data-bs-target="#qnadel" onclick="qnaDelete()" data-qna-num="${qna.num}" id="qnaDel">삭제</a>
	                                    					</div>    
	                                                                </c:if>
                                                                <div id="qnaContentsQ" >
                                                                ${qna.contents} 
                                                                </div>
                                                                <c:if test="${memberVO.adminCheck eq 0 && empty qna.reply}">
                                                                <button type="button" class="btn" style="margin-left:-20px;" id="replyAdd" data-bs-toggle="modal"
                                         							data-bs-target="#addReply" data-qna-num="${qna.num}"> 답변달기</button>
                                                                </c:if>
                                                                <c:if test="${not empty qna.reply}"> 
                                                                <hr>
                                                                <div class="reply-box">
                                                                    <span class="cate col-1">
                                                                        <span class="fw-bold text-danger"> A</span>
                                                                    </span>
                                                                    <div>
                                                                    ${qna.reply}
                                                                    </div>
                                                                    <fmt:formatDate value="${qna.replyDate}" pattern="yyyy/MM/dd" var="formattedDate2" />
																	<span style="font-weight:400; float:right;" >답변작성일 : ${formattedDate2}</span>
                                                                </div>
                                                                </c:if>
                                                            	</div><!----><!---->
                                                        	</div>
                                                    	</div>
                                                	</div>
                                            	</div>
                                        	</div>   
                                    	</div>
                                    	</c:forEach>
                                	</div>  
                             	</div>
                             	
                             	<!-- 상품문의 끝 -->
						<!-- 구매후기 시작 -->
                             <div class="tab-pane fade" id="review">
                                <div class="row g-4 col-12">
                                    <div class="col-md-3" style="margin-top:-20px;">
                                        <div class="customer-rating mt-5 me-5" >
                                           
			                                  		<div hidden>        
								                       <c:set var="totalRating" value="0" />${totalRating}
														<c:forEach items="${review}" var="review">
					    									<c:set var="totalRating" value="${totalRating + review.rate}" /><p> 이거 뭐야  ${totalRating} </p>
														</c:forEach>
													</div>
													<c:set var="averageRating" value="${totalRating / review.size()}" />
													 <h2>평점 (<fmt:formatNumber value="${averageRating}" pattern="#.#" />)</h2>

				                                            <ul class="rating my-2 d-inline-block">
																<li><i class="fas fa-star ${averageRating >= 0.5 ? 'theme-color' : ''}"></i></li>
																<li><i class="fas fa-star ${averageRating >= 1.5 ? 'theme-color' : ''}"></i></li>
																<li><i class="fas fa-star ${averageRating >= 2.5 ? 'theme-color' : ''}"></i></li>
																<li><i class="fas fa-star ${averageRating >= 3.5 ? 'theme-color' : ''}"></i></li>
																<li><i class="fas fa-star ${averageRating >= 4.5 ? 'theme-color' : ''}"></i></li>
											        		</ul>  
			                                            <div class="global-rating">
			                                                <h5 class="font-light">${review.size()}건</h5>
			                                            </div>
															<ul class="rating-progess">
																<li>
																    <h5 class="me-3">5 점</h5>
																  <c:set var="fiveStarCount" value="0" />
																	<c:forEach items="${review}" var="r">
																		<c:if test="${r.rate >= 4.5 && r.rate <= 5.0}">
																			<c:set var="fiveStarCount" value="${fiveStarCount + 1}" />
																		</c:if>
																	</c:forEach>
																	<div class="progress">
																	    <c:set var="fiveStarPercentage" value="${(fiveStarCount / fn:length(review)) * 100}" />
																			<div class="progress-bar" role="progressbar" style="width: ${fn:substringBefore(fiveStarPercentage, '.')}%;"
																			aria-valuenow="${fn:substringBefore(fiveStarPercentage, '.')}%" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																	<h5 class="ms-3">
																    <c:set var="fiveStarPercentage" value="${(fiveStarCount / fn:length(review)) * 100}" />
																	<c:out value="${fn:substringBefore(fiveStarPercentage, '.')}%" />
																    </h5>
																</li>
																<li>
																    <h5 class="me-3">4 점</h5>
																    <c:set var="fourStarCount" value="0" />
																		<c:forEach items="${review}" var="r">
																			<c:if test="${r.rate >= 3.5 && r.rate < 4.5}">
																				<c:set var="fourStarCount" value="${fourStarCount + 1}" />
																			</c:if>
																		</c:forEach>
																	<div class="progress">
																    	<c:set var="fourStarPercentage" value="${(fourStarCount / fn:length(review)) * 100}" />
																	<div class="progress-bar" role="progressbar" style="width: ${fn:substringBefore(fourStarPercentage, '.')}%;"
																	aria-valuenow="${fn:substringBefore(fourStarPercentage, '.')}%" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																	<h5 class="ms-3">
																    <c:set var="fourStarPercentage" value="${(fourStarCount / fn:length(review)) * 100}" />
																	<c:out value="${fn:substringBefore(fourStarPercentage, '.')}%" />
																    </h5>
																</li>
																<li>
																    <h5 class="me-3">3 점</h5>
															    	<c:set var="threeStarCount" value="0" />
																		<c:forEach items="${review}" var="r">
																			<c:if test="${r.rate >= 2.5 && r.rate < 3.5}">
																				<c:set var="threeStarCount" value="${threeStarCount + 1}" />
																			</c:if>
																		</c:forEach>
																	<div class="progress">
																	    <c:set var="threeStarPercentage" value="${(threeStarCount / fn:length(review)) * 100}" />
																	<div class="progress-bar" role="progressbar" style="width: ${fn:substringBefore(threeStarPercentage, '.')}%;"
																	aria-valuenow="${fn:substringBefore(threeStarPercentage, '.')}%" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																	<h5 class="ms-3">
																    <c:set var="fourStarPercentage" value="${(threeStarCount / fn:length(review)) * 100}" />
																	<c:out value="${fn:substringBefore(threeStarPercentage, '.')}%" />
																    </h5>
																</li>
																<li>
																    <h5 class="me-3">2 점</h5>
																    <c:set var="twoStarCount" value="0" />
																		<c:forEach items="${review}" var="r">
																			<c:if test="${r.rate >= 1.5 && r.rate < 2.5}">
																				<c:set var="twoStarCount" value="${twoStarCount + 1}" />
																			</c:if>
																		</c:forEach>
																	<div class="progress">
																    	<c:set var="twoStarPercentage" value="${(twoStarCount / fn:length(review)) * 100}" />
																	<div class="progress-bar" role="progressbar" style="width: ${fn:substringBefore(twoStarPercentage, '.')}%;"
																	aria-valuenow="${fn:substringBefore(twoStarPercentage, '.')}%" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																	<h5 class="ms-3">
																    <c:set var="twoStarPercentage" value="${(twoStarCount / fn:length(review)) * 100}" />
																	<c:out value="${fn:substringBefore(twoStarPercentage, '.')}%" />
																    </h5>
																</li>
																<li>
																    <h5 class="me-3">1 점</h5>
																    <c:set var="oneStarCount" value="0" />
																		<c:forEach items="${review}" var="r">
																			<c:if test="${r.rate >= 0.5 && r.rate < 1.5}">
																				<c:set var="oneStarCount" value="${oneStarCount + 1}" />
																			</c:if>
																		</c:forEach>
																	<div class="progress">
																	    <c:set var="oneStarPercentage" value="${(oneStarCount / fn:length(review)) * 100}" />
																	<div class="progress-bar" role="progressbar" style="width: ${fn:substringBefore(oneStarPercentage, '.')}%;"
																	aria-valuenow="${fn:substringBefore(oneStarPercentage, '.')}%" aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																	<h5 class="ms-3">
																	    <c:set var="oneStarPercentage" value="${(oneStarCount / fn:length(review)) * 100}" />
																		<c:out value="${fn:substringBefore(oneStarPercentage, '.')}%" />
																    </h5>
																</li>
															</ul>
								<!-- 왼쪽 총 별점 퍼센테이지 및 평균 평점 -->
                                       	 </div>
                                    </div>

									<div class="customer-review-box col-md-9">
   										<div class="review-box d-flex justify-content-end">
											<div class="box-head">
											    <button class="btn btn-solid-default btn-sm fw-bold writeReview" data-bs-toggle="modal"
											        data-bs-target="#addReview">후기 작성</button>
											</div>
										</div>
                                            <h2 class="col-md-7" style="margin-top:-50px;">구매 후기</h2>
											<c:forEach items="${review}" var="review">
	                                             <div class="customer-section" data-review="${review.num}" data-rate="${review.rate}">
	                                                <div class="customer-details">
	                                                    <c:set var="username" value="${fn:substringBefore(review.email, '@')}" />
															<h5>${username}</h5>
															<c:if test="${memberVO.memberNum eq review.memberNum }">
															<div class="admin-update-delete d-flex justify-content-end">
						                                        <a href="javascript:void(0)" class="me-3 reviewUpdate" data-bs-toggle="modal"
		                                                            data-bs-target="#updateReview" id="reviewUpdate${review.num}"
		                                                            data-review-num="${review.num}">수정</a>
						                                        <a href="javascript:void(0)" data-bs-toggle="modal"
						                                                    data-bs-target="#reviewdel" onclick="reviewDelete()" data-review-num="${review.num}" id="reviewDel">삭제</a>
	                                    					</div>    
	                                    					</c:if>
                                                    <ul class="rating my-2 d-inline-block">
							                          	<li> <i class="fas fa-star ${review.rate >= 0.5 ? 'theme-color' : ''}"></i></li>
													    <li><i class="fas fa-star ${review.rate >= 1.5 ? 'theme-color' : ''}"></i></li>
											            <li><i class="fas fa-star ${review.rate >= 2.5 ? 'theme-color' : ''}"></i></li>
											            <li><i class="fas fa-star ${review.rate >= 3.5 ? 'theme-color' : ''}"></i></li>
											            <li><i class="fas fa-star ${review.rate >= 4.5 ? 'theme-color' : ''}"></i></li>
											        </ul>        
														<input type="hidden" id="reviewNum" value="${review.num}" data-comment-num="${review.num}">
	                                                    	<p class="font-light" name="contents">${review.contents}</p>
	                                                    <input type="hidden" id="orderNum" name="orderNum" value="${review.orderNum}">
														<input type="hidden" id="memberNum" name="memberNum" value="${review.memberNum}">
														<input type="hidden" name="slicedCode" value="${param.slicedCode}">
													<p class="date-custo font-light">
														<fmt:formatDate value="${review.regDate}" pattern="yyyy/MM/dd" /><span></span></p>
                                                	</div>
                                               	</div>
											</c:forEach>
										
                          <!-- paging --> <nav class="page-section d-flex justify-content-end"
                                                style="position: relative;">
                                                <ul class="pagination mx-auto">
                                                    <li class="page-item">
                                                        <a class="page-link" href="javascript:void(0)"
                                                            aria-label="Previous">
                                                            <span aria-hidden="true">
                                                                <i class="fas fa-chevron-left"></i>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li class="page-item active">
                                                        <a class="page-link" href="javascript:void(0)">1</a>
                                                    </li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="javascript:void(0)">2</a>
                                                    </li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="javascript:void(0)">3</a>
                                                    </li>
                                                    <li class="page-item">
                                                        <a class="page-link" aria-label="Next">
                                                            <span aria-hidden="true">
                                                                <i class="fas fa-chevron-right"></i>
                                                            </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </nav> <!-- paging -->
                                        </div>
                                    </div>
                            	</div>
                            	<!-- 구매후기 end -->
                        </div>
                    </div>
		</div>
	</div>
</section>
    <!-- Shop Section end -->

<!-- 장바구니 버튼 모달창 start -->
 <div class="modal fade payment-modal" id="cartinto">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-4">
                     <h3>장바구니에 담으시겠습니까? </h3>
                    </div>
                </form>
            </div>
            <div class="modal-footer pt-0 text-end d-block">
                <a href="#" ><button class="btn btn-solid-default rounded-1">확인</button></a>
            </div>
        </div>
    </div>
</div>
<!-- 장바구니 버튼 모달창 End -->

     <!-- 리뷰작성-->
     <div class="modal fade payment-modal" id="addPayment">
        <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                            <div class="modal-body col-12 d-flex">
                                <form>
                                    <label for="name" class="form-label mt-2">평점
                                    <li><span class="mx-3">|</span></li>
                                    <div class="col-md-12 mt-1 mb-0">
                                        <ul class="rating mb-3 d-inline-block">
                                            <li>
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                            <li>
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                            <li>
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                        </ul>
                                     </label>
                                        <div class="mb-4 mt-2">
                                            <label for="card" class="form-label">구매 후기</label>
                                            <textarea class="form-control col-12"  placeholder="간단한 후기를 작성해주세요."></textarea>
                                        </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer pt-0 text-end d-block">
                                        <button class="btn btn-solid-default btn-sm" data-bs-dismiss="modal">작성</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
  
    <!-- 리뷰작성 모달 End -->

    <!-- 문의 작성-->
    <div class="modal fade payment-modal" id="addPayment2">
        <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                            <div class="modal-body">
                                <form>
                                    <div class="col-md-12 mt-1 mb-0">
                                        <label class=""> 상품명
                                        <li><span class="mx-3">|</span></li>
                                        <li><span class="fw-bold">Galaxy S21 Ultra 5G</span></li>
                                    </label>
                                        <div class="mt-2 mb-3">
                                            <label for="card" class="form-label">상품 문의</label>
                                            <textarea class="form-control col-12"  placeholder="해당 상품과 관련하여 궁금한 점을 작성해주세요."></textarea>
                                        </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer d-flex justify-content-end">
                                        <button class="btn btn-solid-default btn-sm" data-bs-dismiss="modal">작성</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
  
    <!-- 문의작성 모달 End -->    

 <!-- 상품 삭제 모달창 start -->
 <div class="modal fade payment-modal" id="productdel">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-4">
                     <h3>정말 삭제하시겠습니까? </h3> <h5>삭제 후에는 복구가 불가합니다.</h5>
                    </div>
                </form>
            </div>
            <div class="modal-footer pt-0 text-end d-block">
                <a href="#" ><button class="btn btn-solid-default rounded-1">확인</button></a>
            </div>
        </div>
    </div>
</div>
<!-- 상품 삭제 모달창 End -->    

    <div class="bg-overlay"></div>

    <script>
        $(".quantity-wrapper .quantity-right-plus").on("click", function () {
            var $qty = $(this).siblings(".input-wrapper").find(".input-number");
            var currentVal = parseInt($qty.val(), 10);
            if (!isNaN(currentVal)) {
                $qty.val(currentVal + 1);
            }
            });

            $(".quantity-wrapper .quantity-left-minus").on("click", function () {
            var $qty = $(this).siblings(".input-wrapper").find(".input-number");
            var currentVal = parseInt($qty.val(), 10);
            if (!isNaN(currentVal) && currentVal > 1) {
                $qty.val(currentVal - 1);
            }
            });
    </script>
<c:import url="../temp/footer.jsp"></c:import>    
</body>

</html>
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>Product 4 Image</title>
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

 /* 요금제 변경 모달 버튼 */
 .quick-view-modal .product-right .size-detail {
  padding: 20px 0;
  border-top: 1px dashed #ced4da; }
  @media (max-width: 575px) {
    .quick-view-modal .product-right .size-detail {
      padding: 15px 0; } }
  .quick-view-modal .product-right .size-detail ul {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex; }
    .quick-view-modal .product-right .size-detail ul li {
      width: 130px;
      height: 40px;
      text-align: center;
      border: 1px solid #ced4da;
      cursor: pointer;
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-align: center;
          -ms-flex-align: center;
              align-items: center;
      -webkit-box-pack: center;
          -ms-flex-pack: center;
              justify-content: center; }
      .quick-view-modal .product-right .size-detail ul li.selected {
        -webkit-box-shadow: 0 2px 7px rgba(0, 0, 0, 0.2);
                box-shadow: 0 2px 7px rgba(0, 0, 0, 0.2); }
      .quick-view-modal .product-right .size-detail ul li + li {
        margin-left: 10px; }

    .form-control {
        border : 0px;
        border-bottom : 1px solid lightgray;
        border-radius: 0;
        margin: -1px 0px 3px 0px;

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
                                                <img src="/assets/images/fashion/galaxy21u1.png"
                                                    class="img-fluid bg-img blur-up lazyload" alt="">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div>
                                                <img src="/assets/images/fashion/galaxy21u2.png"
                                                    class="img-fluid bg-img blur-up lazyload" alt="">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div>
                                                <img src="/assets/images/fashion/galaxy21u3.png"
                                                    class="img-fluid bg-img blur-up lazyload" alt="">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div>
                                                <img src="/assets/images/fashion/galaxy21u4.png"
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
                                        갤럭시 S21 울트라
                                    </div>
                                    <div>
                                        <h3 class="mt-3 ">출고가</h3>
                                    </div>
                                    <p>
                                        <span class="price-detail theme-color fw-bold">1,155,000</span>
                                        <span class="unit">원</span>
                                    </p>

                                    <div class="product-option-item color">
                                        <div class="option-title-area">
                                            <h3 class="option-title mb-2">색상</h3>
                                        </div>
                                        <div class="color-types">
                                            <ul class="color-variant mb-0">
                                                <li class="bg-white  border boder-1 selected"></li>
                                                <li class="bg-light1"></li>
                                                <li class="bg-blue1"></li>
                                                <li class="bg-black1"></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <h3 class="option-title mt-3 mb-2">용량</h3>
                                        </div>
                                        <div>
                                            <span>
                                                <input type="radio" hidden name="_productCapacity">
                                                    <label for="_productCapacity1" class="btn btn-outline-custom m-1 capacity">
                                                        <span>128G</span>
                                                    </label>
                                            </span>
                                            <span>
                                                <input type="radio" hidden name="_productCapacity">
                                                <label for="_productCapacity1" class="btn m-1 btn-outline-custom capacity">
                                                    <span>256G</span>
                                                </label>
                                            </span>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="product-option-item join">
                                        <div class="option-title-area">
                                            <h3 class="option-title mt-3 mb-2">가입유형</h3>
                                        </div>
                                        <div class="option-types" id="joinType">
                                            <span class="c-ick-btn">
                                                <input type="radio" hidden name="_joinType" id="joinType1">
                                                <label for="joinType1" class="btn m-1 btn-outline-custom joinType">
                                                    <span class="labelin">기기변경</span>
                                                </label>
                                            </span>
                                            <span class="c-ick-btn">
                                                <input type="radio" hidden name="_joinType" id="joinType2">
                                                <label for="joinType2" class="btn m-1 btn-outline-custom joinType">
                                                    <span class="labelin">번호이동</span>
                                                </label>
                                            </span>
                                            <span class="c-ick-btn">
                                                <input type="radio" hidden name="_joinType" id="joinType3">
                                                <label for="joinType3" class="btn m-1 btn-outline-custom joinType">
                                                    <span class="labelin">신규가입</span>
                                                </label>
                                            </span>
                                        </div>
                                    </div>                                    

                                    <div class="product-option-item pay installment">
                                        <div class="option-title-area">
                                            <h3 class="option-title mt-3 mb-2">이용방법</h3>
                                        </div>
                                        <div class="option-types mb-3" id="payType">
                                            <span class="c-ick-btn lg">
                                                <input type="radio" hidden name="_payType" id="payType1">
                                                <label for="payType1" class="btn m-1 btn-outline-custom payType">
                                                    <span class="labelin">12개월<br>약정할인</span>
                                                </label>
                                            </span>
                                            <span class="c-ick-btn lg checked">
                                                <input type="radio" hidden name="_payType" id="payType2" >
                                                <label for="payType2" class="btn m-1 btn-outline-custom payType">
                                                    <span class="labelin">24개월<br>약정할인</span>
                                                </label>
                                            </span>
                                            <span class="c-ick-btn lg">
                                                <input type="radio" hidden name="_payType" id="payType3">
                                                <label for="payType3" class="btn btn-outline-custom m-1 payType">
                                                    <span class="labelin">24개월<br>공시지원금</span>
                                                </label>
                                            </span>
                                        </div>
                                    </div>
                                    
                                    <div class="product-option-item" style="position: relative; padding: 16px 0 30px 100px; border-top: 1px solid #d3d3d3;">
                                        <div>
                                            <div class="option-title-area mt-3" style="position: absolute; top: 42px; left: 0;">
                                                <div class="option-title" style="display: inline-block; color: #5a5a5a; font-size: 14px; font-weight: 400;">
                                                    요금제
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-option-item compare mt-3" id="subscriptionInfo">
                                            <dl class="compare-inner" style="display: block; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px; margin: 0; padding: 0;">
                                                <dt class="compare-title">
                                                    <div class="inner">
                                                        <div class="info">
                                                            <div class="tit">
                                                                <span class="sub-tit" id="subscriptionNm" style="overflow: hidden; font-size: 22px; font-weight: 700; letter-spacing: -0.5px; text-overflow: ellipsis;">프리미어 88</span><br>
                                                                <h2 class="main-tit" id="dataDefaultQty" style="margin: 3px 0 3px; font-size: 16px; font-weight: 400; letter-spacing: -0.56px; padding-right: 100px;"> 데이터 / 전화 / 문자 무제한</h2>                                                            
                                                            </div>
                                                            <div class="data" style="position: absolute; top: 35px; right: 0; text-align: right;">
                                                                <h2 class="price theme-color" id="subscriptionPrice" style="letter-spacing: -0.2px; display: block; margin-top: 6px; color: #000; font-weight: 700;">
                                                                    69,000 <span style="color:black; font-size:20px;">원/월</span>
                                                                </h2>
                                                            </div>
                                                            <div class="d-flex justify-content-end">
                                                                <a href="javascript:void(0)" data-bs-toggle="modal" id="cartEffect" data-bs-target="#quick-view2"
                                                                class="btn" style="margin-top:-95px; margin-right:-30px;" > 
                                                                <span style="text-decoration: underline; color:black;">요금제 변경하기</span> 
                                                            </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </dt>            
                                            </dl>                                                        
                                        </div>
                                        
                                            <!-- [D] case1 -->
                                            <div class="option-types" id="discountSubcomm" style="display:none">
                                                <span class="c-ick-btn lg" style="display: none;">
                                                    <input type="radio" name="_discountSubcomm" id="_discountPeople1" data-subcomm-term="12" data-subcomm-fmly-dc-yn="N" data-subcategory-id="" data-commitment-cd="" data-commitment-term="" data-subcomm-id="" data-subcomm-disamt="" data-parent-circuit-auth-yn="" data-fmly-no-ctgry-fl="" data-fmly-dc-yn="">
                                                    <label for="_discountPeople1" class="label">
                                                        <span class="labelin">12개월 요금약정<br>-<span></span>원/월</span></label>
                                                </span>
                                                <span class="c-ick-btn lg" style="display: none;">
                                                    <input type="radio" name="_discountSubcomm" id="_discountPeople2" data-subcomm-term="24" data-subcomm-fmly-dc-yn="N" data-subcategory-id="" data-commitment-cd="" data-commitment-term="" data-subcomm-id="" data-subcomm-disamt="" data-parent-circuit-auth-yn="" data-fmly-no-ctgry-fl="" data-fmly-dc-yn="">
                                                    <label for="_discountPeople2" class="label"><span class="labelin">24개월 요금약정<br>-<span></span>원/월</span></label>
                                                </span>
                                                <span class="c-ick-btn lg checked" style="display: none;">
                                                    <input type="radio" name="_discountSubcomm" id="_discountFamily1" data-subcomm-term="0" data-subcomm-fmly-dc-yn="N" data-subcategory-id="P" data-commitment-cd="00" data-commitment-term="0" data-subcomm-id="00" data-subcomm-disamt="0" data-parent-circuit-auth-yn="" data-fmly-no-ctgry-fl="N" data-fmly-dc-yn="N">
                                                    <label for="_discountFamily1" class="label"><span class="labelin">적용하지 않음</span></label>
                                                </span>
                                            </div>
                                           
                                            <!-- 22.01.24 보안문자 영역 추가 및 수정 + CASE 추가 -->
                                            <div class="form-group-wrap" id="captchaRegion_lineAuth" style="display:none;">
                                                <div class="cont">
                                                    <div class="form-group secur-wrap">
                                                        <div class="securnum-show">
                                                            <p class="show-box">
                                                                <!-- [D]보안 문자가 그려지는 영역 -->
                                                                <img src="/captcha/captchaImg?rdn=0.47251426717341016" id="captchaImg_lineAuth" alt="보안문자" style="width: 100%; height: 100%;">
                                                            </p>
                                                            <ul class="btn-box">
                                                                <li><button type="button" class="btn-sound" name="captchaAudio" id="captchaAudio_lineAuth" data-gubun="_lineAuth">음성듣기</button></li>
                                                                <li><button type="button" class="btn-reload" name="captchaReload" id="captchaReload_lineAuth" data-gubun="_lineAuth">새로고침</button></li>
                                                            </ul>
                                                        </div>
                                                        <span class="c-input-outline">
                                                            <input type="text" class="input" autocomplete="off" name="captchaAnswer" id="captchaAnswer_lineAuth" data-gubun="_lineAuth" onkeypress="javascript:if(event.keyCode==13){return false;};" placeholder="보안문자 (이미지의 문자 입력)" maxlength="6" value="" numberonly="" role="" style="text-transform: uppercase;">
                                                                <p class="secur-msg" id="securFailed_lineAuth" style="display:none;">보안 문자를 정확하게 입력해 주세요</p>
                                                                <p class="secur-msg" id="securValid_lineAuth" style="display:none;">보안 문자를 정확하게 입력하였습니다</p>
                                                        </span>
                                                        <p class="notice_msg" id="noticeMsg_lineAuth">* 보안문자 입력 후 인증을 다시 진행하세요.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="option-other" id="discountWelfare" style="display: none;">
                                                <span class="option">
                                                    <span class="c-chk" style="display: none;">
                                                        <input type="checkbox" name="_discountWelfare" id="_discountWelfare1">
                                                        <label for="_discountWelfare1" class="label">복지할인</label>
                                                    </span>
                                                <!-- 복지할인 안내 : 생계/의료 수급자 case -->
                                                <!-- 복지할인 안내 : 주거/교육 수급자 case -->
                                                    </span>
                                                <span class="price"></span>
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
                            <div id="desc" class="tab-pane fade show active"><!-- 여기부터 admin 소스 -->
                                <div class="p_description"><br>
                                    <h3 class="h3-tit single">팬텀 컬러와 초고화질을 자랑하는, <br>
                                        <span>Galaxy S21 Ultra 5G</span>
                                    </h3>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058103878994230.jpg"
                                            alt="">
                                        <div class="hidden">
                                            <p>CPU 종류 : Octa-Core | 디스플레이 크기 : 173.0 mm | 색상 : 팬텀 블랙, 팬텀 실버</p>
                                            <ol>
                                                <li>1억 8백만 초고화질과 100배 스페이스 줌</li>
                                                <li>컨텐츠 맞춤 주사율 120 Hz 디스플레이</li>
                                                <li>S 시리즈 최초 S펜 기능 지원</li>
                                            </ol>
                                        </div>
                                    </div>

                                    <h3 class="h3-tit">컨투어 컷 후면 카메라 디자인과 <br>신비로운 <span>팬텀 컬러</span></h3>
                                    <p class="sub-description">눈길을 사로잡는 팬텀컬러로 완성된 갤럭시 S21 Ultra 5G를 만나보세요. <br>컨투어 컷 후면
                                        카메라 디자인과 무광의 헤이즈 마감으로 고급스러움을 더했습니다.</p>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058106364874602.jpg"
                                            alt="">
                                    </div>
                                    <p class="exclamation">해당 이미지는 연출된 이미지이며, 실제 제품과 차이가 있을 수 있습니다.</p>

                                    <h3 class="h3-tit">너무 멀어서라는 핑계와 <span>멀어지세요</span></h3>
                                    <p class="sub-description">갤럭시의 모든 줌을 능가하는 듀얼 줌 시스템. 100배 스페이스 줌으로 더 빠르고 부드럽게,
                                        <br>무엇보다 또렷하게 확대해 줍니다. 새로워진 줌 락 기능으로 훨씬 안정적인 줌 촬영이 가능해졌습니다.</p>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058109018996969.jpg"
                                            alt="">
                                    </div>
                                    <ul class="exclamation">
                                        <li>100배 스페이스 줌은 10배 광학 줌을 포함하며 최대 100배 초해상도 줌까지 확장됩니다. <br>초고해상도 줌에는 디지털 줌이
                                            포함되어 있어 이미지 품질이 다소 저하될 수 있습니다.</li>
                                        <li>해당 기능은 후면 카메라에 한해 사용 가능합니다.</li>
                                    </ul>

                                    <h3 class="h3-tit">1억 800만 <span>초고화소 센서</span></h3>
                                    <p class="sub-description">디테일한 능력을 가진 1억 800만 초고화소 카메라. 사진 속 아주 작은 부분을 크게 확대해도
                                        <br>디테일과 색감까지 선명하게 표현할 수 있습니다.</p>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058111481556433.jpg"
                                            alt="">
                                    </div>
                                    <h3 class="h3-tit">인물 모드로 찍는 <span>인생사진</span></h3>
                                    <p class="sub-description">AI가 접목된 인물 모드는 스튜디오에서 촬영하듯, 조명을 이상적으로 조절해 줍니다. <br>이목구비는
                                        물론 빛의 앵글과 방향까지 분석하고 피사계 심도를 측정할 수 있기에 가능한 기술입니다.</p>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058113741667181.jpg"
                                            alt="">
                                    </div>
                                    <h3 class="h3-tit">어두운 밤에도 선명한 <span>야간 사진</span></h3>
                                    <p class="sub-description">야간 모드로 저조도 촬영 기술의 놀라운 혁신을 경험할 수 있습니다. <br>밤의 어둠 속에서도 환하고
                                        강렬한 색감을 포착하며, 짧은 촬영 시간에도 노이즈가 적은 <br>또렷한 사진을 남길 수 있습니다.</p>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058115979263209.jpg"
                                            alt="">
                                    </div>
                                    <h3 class="h3-tit"><span>S펜으로</span> 손끝에 세밀한 능력을</h3>
                                    <p class="sub-description">갤럭시 S시리즈 최초의 S펜입니다. 당신이 펜을 쓸 수 있게 됐다는 건, <br>갤럭시가 스마트폰의
                                        한계를 다시 썼다는 뜻입니다.</p>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058118094347196.jpg"
                                            alt="">
                                    </div>
                                    <ul class="exclamation">
                                        <li>갤럭시 S21 Ultra 5G에만 해당됩니다.</li>
                                        <li>S펜은 별도 판매이며, 앱에 따라 응답 속도가 다를 수 있습니다.</li>
                                        <li>S펜은 블루투스를 지원하지 않으며, 무선 제어 기능이 지원되지 않습니다.</li>
                                    </ul>

                                    <h3 class="h3-tit">따로 또 같이 작게 크게 보는 <span>스크린</span></h3>
                                    <p class="sub-description">구글 듀오를 활용한 빅 스크린 영상통화. 친구와 연인 사이에 안부를 전하는 놀랍도록 편리한 방법입니다.
                                        <br>호환 또한 자유롭기에, 멀리 있지만 소중한 사람들과 언제 어디서나 가까워질 수 있습니다.</p>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058120186191901.jpg"
                                            alt="">
                                    </div>
                                    <ul class="exclamation">
                                        <li>이해를 돕기 위해 연출된 이미지입니다.</li>
                                        <li>Google Duo 관련 표기는 Google LLC. 의 상표입니다.</li>
                                        <li>구글 듀오 사용 시 구글 계정 가입이 필요할 수 있습니다.</li>
                                    </ul>

                                    <h3 class="h3-tit">어댑티브 <span>120Hz 디스플레이</span></h3>
                                    <p class="sub-description">사용하는 콘텐츠에 따라 주사율을 자동으로 조절하여 부드러운 화면 전환이 가능합니다.</p>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058122074418364.jpg"
                                            alt="">
                                    </div>
                                    <p class="exclamation">갤럭시 S21 Ultra 5G의 화면을 지각화해 측정한 크기는 173.0mm이며, 직각화 하지 않고 측정한
                                        크기는 168.7mm입니다. <br>둥근 모서리와 전면 카메라 홀로 인해 실제 보이는 영역은 사이즈보다 작습니다.</p>

                                    <h3 class="h3-tit">올 데이를 넘어서는 <span>올 데이 파워</span></h3>
                                    <p class="sub-description">5G환경에서도 하루 종일, 아니 그 이상 사용할 수 있는 갤럭시 S21 Ultra 5G의 인텔리전트
                                        배터리, 전력을 효율적으로 사용하는 디스플레이. 프로세서와 결합하여, 최대 5,000mAh 대용량의 파워를 24시간 이상 보여줍니다.</p>
                                    <div class="img-section">
                                        <img src="https://cdnw.shop.tworld.co.kr/pimg/plan_editor/202101/75058124748716133.jpg"
                                            alt="">
                                    </div>
                                    <p class="exclamation">제3의 실험실 환경에서 측정한 배터리 용량입니다. 일반적인 수치는 IEC 61960 표준에 따라 테스트한
                                        배터리 샘플들의 용량 편차를 고려해 추정한 평균 수치입니다. 정격(최소) 용량은 갤럭시 S21 Ultra 5G의 경우 4,855mAh입니다.
                                        <br>실제 배터리 수명은 네트워크 환경, 사용 패턴 및 기타 요인에 따라 달라질 수 있습니다.</p>

                                    <h3 class="h3-tit single">제품 사양</h3>
                                    <table class="tbl_row">
                                        <caption>제품 사양</caption>
                                        <colgroup>
                                            <col style="width:20%">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">제품명</th>
                                                <td>Galaxy S21 Ultra 5G</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">디스플레이</th>
                                                <td>6.8” Dynamic AMOLED 2X WQHD+ 엣지 디스플레이</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">CPU</th>
                                                <td>Exynos 2100</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">OS</th>
                                                <td>Android</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">메모리</th>
                                                <td>RAM 12GB / ROM 256GB <br>RAM 16GB / ROM 512GB</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">외장 메모리</th>
                                                <td>미지원</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">카메라</th>
                                                <td>전면 4,000만(F2.2) <br>후면 1,000만(F2.4 망원1) + 1,000만(F4.9 망원2) +
                                                    10,800만(F1.8 광각) <br>+ 1,200만(F2.2 초광각)</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">네트워크</th>
                                                <td>5G</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">USIM</th>
                                                <td>Nano 유심</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">크기</th>
                                                <td>75.6 X 165.1 X 8.9mm</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">무게</th>
                                                <td>227g</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">배터리</th>
                                                <td>5,000mAh</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">특징</th>
                                                <td>S펜</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">제조국</th>
                                                <td>한국</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                               
                            </div>

                            <div class="tab-pane fade" id="question">
                                <div class="accordion-group-header side-type mb-4">
                                    
                                    <h2 class="left title m-0">상품 문의 (3)</h2>
                                    <div class="d-flex justify-content-end">
                                        
                                        <button class="btn btn-solid-default btn-sm fw-bold me-4" data-bs-toggle="modal"
                                                            data-bs-target="#addPayment2">
                                                            문의 작성</button>
                                    </div>
                                </div>
                                <div class="container mb-5">
                                    <div class="category-option">
                                        <div class="accordion category-name" id="accordionExample">
                                            <div class="accordion-item category-rating">
                                                <h2 class="accordion-header"  id="headingThree" style="padding:0px;">
                                                    <button class="accordion-button" style="background-color:#fff; padding:0px;" type="button" data-bs-toggle="collapse"
                                                        data-bs-target="#collapseThree">
                                                        <div class="d-flex col-10">
                                                        <span class="col-2 mx-2 theme-color">
                                                           <span>답변완료</span>
                                                        </span>
                                                        <h5 class="col-7 me-5">저희엄마폰 기기변경했는데 후기작성자체가 안됩니다</h5> 
                                                        <span class="user col-1 me-5" style="font-weight:400;">이*정</span>
                                                        <span class="date col-1" style="font-weight:400;">2023.05.14</span>
                                                    </div>  
                                                    </button>
                                                    
                                                </h2>
                                                <div id="collapseThree" class="accordion-collapse collapse"
                                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                    <div class="accordion-body">
                                                        <div class="card"><!----><!---->
                                                            <div class="card-body"><!----><!---->                                                            
                                                                <span class="cate col-1">
                                                                    <span class="fw-bold text-danger">Q</span>
                                                                </span>
                                                                <div>
                                                                제거아이디 엄마꺼 아이디 다 접속해서 기기변경후기작성하려는데 상품구입후 하라고만 나와요ㅠㅠ어뜨케 작성해야합니까ㅜㄴ
                                                                </div><hr>
                                                                <div class="reply-box">
                                                                    <span class="cate col-1">
                                                                        <span class="fw-bold text-danger">A</span>
                                                                    </span>
                                                                    <div>안녕하세요.
                                                                        <br>일상에 즐거운 변화 유플러스닷컴 김혜란 입니다.<br>
                                                                        <br>휴대폰 번호인증후 해당 기간내 구매해주신 단말기 후기를 작성해주셨다면
                                                                        <br>사은품수령 가능하십니다 ^^ <br>
                                                                        <br>홈페이지 또는 고객센터 앱에서 구매 후기 남겨 주시면 상품권 제공됩니다.<br>
                                                                        <br>▶ 경로 : [전문가 리뷰/구매후기]탭 선택 → [구매후기 쓰기] → <br>[비회원신청/주문조회] → [휴대폰 본인인증]
                                                                        후에 작성 <br>
                                                                        <br>위경로로 작성이 어려우신경우 유플러스닷컴으로 연락주셔서 문의해주시길 부탁드립니다.<br>
                                                                        <br>보다 정확한 안내를 희망하시면 유플러스 닷컴 1644-7009로 문의 부탁드립니다. <br>업무시간 (평일/공유일/주말)
                                                                        : 24시간 운영<br><br>※챗봇은 365일 이용가능,채팅상담사 연결은 평일오전9시~오후6시까지 연결됩니다.
                                                                    </div>
                                                                    <span class="date">2023-05-15</span>
                                                                </div>
                                                            </div><!----><!---->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>   
                                    </div>
                                </div>  
                             </div>

                             <div class="tab-pane fade" id="review">
                                <div class="row g-4 col-12">
                                    <div class="col-md-3" style="margin-top:-20px;">
                                        <div class="customer-rating mt-5 me-5" >
                                            <h2>평점</h2>
                                            <ul class="rating my-2 d-inline-block">
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

                                            <div class="global-rating">
                                                <h5 class="font-light">82 건</h5>
                                            </div>

                                            <ul class="rating-progess">
                                                <li>
                                                    <h5 class="me-3">5 점</h5>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 78%"
                                                            aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <h5 class="ms-3">78%</h5>
                                                </li>
                                                <li>
                                                    <h5 class="me-3">4 점</h5>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 62%"
                                                            aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <h5 class="ms-3">62%</h5>
                                                </li>
                                                <li>
                                                    <h5 class="me-3">3 점</h5>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 44%"
                                                            aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <h5 class="ms-3">44%</h5>
                                                </li>
                                                <li>
                                                    <h5 class="me-3">2 점</h5>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 30%"
                                                            aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <h5 class="ms-3">30%</h5>
                                                </li>
                                                <li>
                                                    <h5 class="me-3">1 점</h5>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 18%"
                                                            aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <h5 class="ms-3">18%</h5>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                        <div class="customer-review-box col-md-9">
                                             <div class="review-box d-flex justify-content-end">
                                                    <div class="box-head">
                                                        <button class="btn btn-solid-default btn-sm fw-bold" data-bs-toggle="modal"
                                                            data-bs-target="#addPayment">
                                                            후기 작성</button>
                                                    </div>
                                            </div>
                                            <h2 class="col-md-7" style="margin-top:-50px;">구매 후기</h2>

                                            <div class="customer-section">
                                                <div class="customer-details">
                                                    <h5>김우희</h5>
                                                    <ul class="rating my-2 d-inline-block">
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
                                                    <p class="font-light">잘 쓰겠습니다.</p>

                                                    <p class="date-custo font-light">- 2023/05/22 <span></span></p>
                                                </div>
                                            </div>

                                            <div class="customer-section">
                                                <div class="customer-details">
                                                    <h5>Norwalker</h5>
                                                    <ul class="rating my-2 d-inline-block">
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
                                                    <p class="font-light">Pros: Nice large(9.7") screen. Bright colors.
                                                        Easy
                                                        to setup and get started. Arrived on time. Cons: a bit slow on
                                                        response, but expected as tablet is 2 generations old. But works
                                                        fine and good value for the money.</p>

                                                    <p class="date-custo font-light">- Sep 08, 2021 <span></span></p>
                                                </div>
                                            </div>

                                            <div class="customer-section">
                                                <div class="customer-details">
                                                    <h5>B. Perdue</h5>
                                                    <ul class="rating my-2 d-inline-block">
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
                                                    <p class="font-light">Love the processor speed and the sensitivity
                                                        of
                                                        the touch screen.</p>

                                                    <p class="date-custo font-light">- Sep 08, 2021 <span></span></p>
                                                </div>
                                            </div>

                                            <div class="customer-section">
                                                <div class="customer-details">
                                                    <h5>MSL</h5>
                                                    <ul class="rating my-2 d-inline-block">
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
                                                    <p class="font-light">I purchased the Tablet May 2017 and now April
                                                        2019
                                                        I have to charge it everyday. I don't watch movies on it..just
                                                        play
                                                        a game or two while on lunch. I guess now I need to power it
                                                        down
                                                        for future use.</p>

                                                    <p class="date-custo font-light">- Sep 08, 2021 <span></span></p>
                                                </div>
                                            </div>
                                            <nav class="page-section d-flex justify-content-end"
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
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section end -->

<!-- 변경하기 모달창 start -->
<div class="modal fade quick-view-modal" id="quick-view2">
    <div class="modal-dialog modal-lg modal-dialog-centered col-12">
        <div class="modal-content">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            <div class="modal-body">
                <div class="row gy-4">
                                    <div class="col-12">
                                        <div class="product-right">
                                            <div class="size-detail">
                                                <h2 class="mb-3 fw-bolder">요금제 선택</h2>
                                                <ul class="nav border-0" style="color:black;">
                                                    <li class="nav-item" >
                                                    <a class="nav-link active" style="color:black;" data-bs-toggle="tab" href="#tab-1">5G 요금제</a>
                                                    </li>
                                                    <li class="nav-item">
                                                    <a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-2">시니어 요금제</a>
                                                    </li>
                                                    <li class="nav-item">
                                                    <a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-3">청소년 요금제</a>
                                                    </li>
                                                    <li class="nav-item">
                                                    <a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-4">ZEM 요금제</a>
                                                    </li>
                                                    <li class="nav-item">
                                                    <a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-5">군인 요금제</a>
                                                    </li>
                                                </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane fade show active" id="tab-1">
                                                            <div class="row col-md-12 my-3 mx-3">
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="credit">
                                                                    <label class="form-check-label" for="credit">5G 프리미어</label>
                                                                </div>
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="debit">
                                                                    <label class="form-check-label" for="debit">5G 베이직</label>
                                                                </div>
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="paypal">
                                                                    <label class="form-check-label" for="paypal">5G 심플</label>
                                                                </div>
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="paypal">
                                                                    <label class="form-check-label" for="paypal">5G 슬림</label>
                                                                </div> 
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="tab-2">
                                                            <div class="row col-md-12 my-3 mx-3">
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="credit">
                                                                    <label class="form-check-label" for="credit">시니어 A형</label>
                                                                </div>
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="debit">
                                                                    <label class="form-check-label" for="debit">시니어 B형</label>
                                                                </div>
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="paypal">
                                                                    <label class="form-check-label" for="paypal">시니어 C형</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="tab-3">청소년 요금제의 내용입니다.</div>
                                                        <div class="tab-pane fade" id="tab-4">ZEM 요금제의 내용입니다.</div>
                                                        <div class="tab-pane fade" id="tab-5">군인 요금제의 내용입니다.</div>
                                                    </div>
                                            </div>
                                        </div>
                                        <div class="col-3 ">    
                                            <div class="product-btns">
                                                <button onclick="location.href='상품상세페이지.html';" type="button" class="btn btn-solid-default btn-lg col-md-12"
                                                    data-bs-dismiss="modal">선택하기</button>
                                            </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

</div>
<!-- 변경하기 모달창 end -->

     <!-- 리뷰작성-->
     <div class="modal fade payment-modal" id="addPayment">
        <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                            <div class="modal-body">
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

    <!-- sticky cart -->
    <div class="sticky-bottom-cart" style="background-color: #383838;">
        <div class="container">
            <div class="cart-content">
                <div class="l-grid" style="margin-left: 102px; height: 90px; width: 1180px; margin: 0 auto;">            
                    <div id="paySummary" class="price-area" style="width: 680px; float: left; padding-top: 28px; line-height: normal;">
                        <p class="exemption-title" id="stickyClubDc" style="display:none; padding-bottom: 25px; font-size: 18px; letter-spacing: -0.42px; color: #cdcdcd;">[클럽기변] 잔여 휴대폰 할부금 <strong class="price" style="color: #fff; font-weight: bolder;">- 0원</strong> 면제</p>
                        <p class="exemption-title" id="stickyTodayRwd" style="display:none; padding-bottom: 25px; font-size: 18px; letter-spacing: -0.42px; color: #cdcdcd;">[바로보상] 신청하신 는 최고 등급일 경우 <strong class="price" style="color: #fff; font-weight: bolder;">0원</strong> 보상 가능합니다.</p>
                        <p class="price-opt" style="position: relative; padding-top: 28px; min-width: 113px; height: 38px; line-height: normal; display: inline-block; vertical-align: middle; margin: 0; padding: 0; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px;">
                            <span class="title" style="position: absolute; bottom: 3px; left: 0; color: #cdcdcd; font-size: 14px; white-space: nowrap; line-height: normal;">휴대폰 월 할부금</span>
                            <em class="price" style="font-style: normal;">		
                                <span class="num" style="font-family: TgothicBlack, Roboto, sans-serif; letter-spacing: 0; font-size: 26px; letter-spacing: -1px; color: #fff; font-weight: 700;">70,814</span>		
                                <span class="unit" style="color: #fff; font-size: 16px;">원</span>	
                            </em>
                        </p>
                        <span class="ico-plus" style="font-weight: bolder; font-size: 20px; color: white; width: 20px; height: 20px; background-position: -446px -546px; margin: 0 28px; display: inline-block; vertical-align: middle; overflow: hidden; display: inline-block; background-image: url(../img/spr_img_v3.png); background-repeat: no-repeat;">+</span>
                        <p class="price-opt" style="position: relative; padding-top: 28px; min-width: 113px; height: 38px; line-height: normal; display: inline-block; vertical-align: middle; margin: 0; padding: 0; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px;">	
                            <span class="title" style="position: absolute; bottom: 3px; left: 0; color: #cdcdcd; font-size: 14px; white-space: nowrap;">월 통신요금</span>	
                            <em class="price" style="font-style: normal;">		
                                <span class="num" style="font-family: TgothicBlack, Roboto, sans-serif; font-size: 26px; letter-spacing: -1px; color: #fff; font-weight: 700;">69,000</span>
                                <span class="unit" style="color: #fff; font-size: 16px;">원</span>	
                            </em>
                        </p>
                        <span class="ico-equal" style="font-weight: bolder; font-size: 20px; color: white; width: 20px; height: 20px; background-position: -470px -546px; margin: 0 28px; display: inline-block; vertical-align: middle; overflow: hidden;  background-image: url(../img/spr_img_v3.png); background-repeat: no-repeat;">=</span>
                        <div class="price-sum" style="position: absolute; padding-top: 28px; min-width: 113px; height: 38px; line-height: normal; display: inline-block; vertical-align: middle; margin: 0; padding: 0; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px;">	
                            <span class="title" style="position: absolute; bottom: 3px; left: 0; color: #cdcdcd; font-size: 14px; white-space: nowrap;">예상 월 납부 금액</span>	
                            <strong class="price" style="display: inline-block; font-weight: bolder;">		
                                <span class="num" style="font-family: TgothicBlack, Roboto, sans-serif; font-size: 26px; letter-spacing: -1px; color: #fff; font-weight: 700;">139,814</span>		
                                <span class="unit" style="font-size: 22px; font-weight: 400; color: #fff;">원</span>	
                            </strong>	
                            <span class="dsc" style="margin-left: 5px; color: #959595; font-size: 12px;">
                                <button type="button" class="btn-text" id="feeDetail" style="color: #3b98e6; cursor: pointer; -webkit-appearance: button; padding: 0; border: 0; background-color: transparent; text-transform: none; overflow: visible; font: inherit; margin: 0; writing-mode: horizontal-tb !important; letter-spacing: normal; word-spacing: normal; text-indent: 0px; text-shadow: none; display: inline-block; text-align: center; box-sizing: border-box;">할부 수수료</button> 
                                5.9%포함
                            </span>
                        </div>
                    </div>
                    <div class="btn-area" style="position: relative; padding-top:17px; float: right;"> 
                        <div class="product-buttons">                      
                        <button type="button" class="btn btn-solid" id="orderBtn" style= "width: 200px; height: 54px; font-size: 18px; display: inline-block; padding: 0 10px; text-align: center; ">주문하기</button>
                    </div> 
                    </div>
                </div>                    
            </div>
        </div>
    </div>    
 <!-- sticky cart end -->
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

    <!-- 버튼 select js -->
    <script>
        const capacity = document.getElementsByClassName('capacity');
        for(let capacity2 of capacity){
            capacity2.addEventListener('click', function(){
                if(capacity2.classList.contains('btn-outline-custom')){
                    for(let capacity3 of capacity){
                        if(capacity3.classList.contains('btn-solid-after')){
                            capacity3.classList.remove('btn-solid-after');
                            capacity3.classList.add('btn-outline-custom');
                        }
                    }
                    capacity2.classList.remove('btn-outline-custom');
                    capacity2.classList.add('btn-solid-after');
                }
                else{
                    capacity2.classList.remove('btn-solid-after');
                    capacity2.classList.add('btn-outline-custom');
                }
            })
        }

        const joinType = document.getElementsByClassName('joinType');
        for(let joinType2 of joinType){
            joinType2.addEventListener('click', function(){
                if(joinType2.classList.contains('btn-outline-custom')){
                    for(let joinType3 of joinType){
                        if(joinType3.classList.contains('btn-solid-after')){
                            joinType3.classList.remove('btn-solid-after');
                            joinType3.classList.add('btn-outline-custom');
                        }
                    }

                    joinType2.classList.remove('btn-outline-custom');
                    joinType2.classList.add('btn-solid-after');
                }
                else{
                    joinType2.classList.remove('btn-solid-after');
                    joinType2.classList.add('btn-outline-custom');
                }
            })
        }

        const payType = document.getElementsByClassName('payType');
        for(let payType2 of payType){
            payType2.addEventListener('click', function(){
                if(payType2.classList.contains('btn-outline-custom')){
                    for(let payType3 of payType){
                        if(payType3.classList.contains('btn-solid-after')){
                            payType3.classList.remove('btn-solid-after');
                            payType3.classList.add('btn-outline-custom');
                        }
                    }

                    payType2.classList.remove('btn-outline-custom');
                    payType2.classList.add('btn-solid-after');
                }
                else{
                    payType2.classList.remove('btn-solid-after');
                    payType2.classList.add('btn-outline-custom');
                }
            })
        }
        
    </script>

<!--  하단 금액 바 고정하는 JS-->
<script>
    window.addEventListener('scroll', function() {
    const stickyCart = document.querySelector('.sticky-bottom-cart');
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;

  if (scrollTop > 0) {
    stickyCart.style.bottom = '0%';
  } else {
    stickyCart.style.bottom = '0%';
  }
});
</script>
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>

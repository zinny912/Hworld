<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="cloth-details-size ">
                                    <div class="admin-update-delete d-flex justify-content-end">
                                        <a href="./directUpdate?slicedCode=${directVO.slicedCode}" class="me-3">수정</a>
                                        <a href="javascript:void(0)" data-bs-toggle="modal"
                                                    data-bs-target="#productdel">삭제</a>
                                    </div>
                                    <div class="brand" style="font-size: 27px; color: gray;" id="productCode">
                                       ${directVO.value}   ${directVO.slicedCode}                                     
                                    </div>
                                    <div class="details-image-concept mt-0" style="font-size: 35px;">
                                        ${directVO.directName}
                                    </div>
                                    <div>
                                        <h3 class="mt-3 ">출고가</h3>
                                    </div>
                                    <p>
                                        <span class="price-detail theme-color fw-bold" id="renewPrice">${directVO.directPrice}</span>
                                        <span class="unit">원</span>
                                    </p>

                                    <div class="product-option-item color">
                                        <div class="option-title-area">
                                            <h3 class="option-title mb-2">색상</h3>
                                        </div>

                                         <div class="color-types">
                                            <ul class="color-variant mb-0" >
                                                <li class="bg-white border boder-1 selected" value="W" name="colorCode"></li>
                                                <li class="bg-gray1" value="G" name="colorCode"></li>
                                                <li class="bg-black1" value="B" name="colorCode"></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <h3 class="option-title mt-3 mb-2">용량</h3>
                                        </div>
                                        <div>
                                            <span>
                                                <input type="radio" hidden name="saveCapacity" value="128" disabled>
                                                    <label for="saveCapacity" class="btn btn-outline-custom m-1 capacity">
                                                        <span >128G</span>
                                                    </label>
                                            </span>
                                            <span>
                                                <input type="radio" hidden name="saveCapacity" value="256" disabled>
                                                <label for="saveCapacity" class="btn m-1 btn-outline-custom capacity">
                                                    <span>256G</span>
                                                </label>
                                            </span>
                                            <span>
                                                <input type="radio" hidden name="saveCapacity" value="512" disabled>
                                                <label for="saveCapacity" class="btn m-1 btn-outline-custom capacity">
                                                    <span>512G</span>
                                                </label>
                                            </span>
                                        </div>
                                    </div>
                                    <input type="hidden" id="directCode" name="directCode">
                                    <input type="hidden" id="categoryCode" name="categoryCode">
                                    <input type="hidden" id="brandCode" name="brandCode">
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
                                <div class="p_description">
                                 
                                    ${directVO.directContents}
                                  
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
<c:import url="../temp/footer.jsp"></c:import>
<script>
$(document).ready(function() {
    const prices = document.querySelectorAll('[id^="renewPrice"]');
    for (var i = 0; i < prices.length; i++) {
        const price = parseInt(prices[i].innerHTML);
        const renewPrice = price.toLocaleString();
        prices[i].innerHTML =renewPrice;
       	
    }
});
</script>
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
   <script type="text/javascript">
    function generateDirectCode(event) {
        event.preventDefault();
        
        let categoryCode = document.getElementById("categoryCode").value;
        let brandCode = document.getElementById("brandCode").value;
        let colorCode = document.querySelector("input[name='colorCode']:checked").value;
        let saveCapacity = document.querySelector("input[name='saveCapacity']:checked").value;
        let productCode = document.getElementById("productCode").innerText;

        let directCode = "P" + categoryCode + "B" + brandCode + "C" + colorCode + "V" + saveCapacity + productCode;

        // AJAX를 통해 서버로 제품 코드 전송 및 응답 처리
        $.ajax({
		  url: "/checkStock",
		  method: "GET",
		  data: { directCode: directCode },
		  success: function(response) {
		    // 응답 처리 로직 작성
		    // 예: 재고가 있으면 구매 가능, 없으면 구매 불가능 등
		    alert(response);
		    if (response === "구매 가능") {
	            // 재고가 있을 경우, 용량 선택 버튼 활성화
	            $("input[name='saveCapacity']").prop("disabled", false);
	        } else {
	            // 재고가 없을 경우, 용량 선택 버튼 비활성화
	            $("input[name='saveCapacity']").prop("disabled", true);
	        }
	    },
		  error: function(xhr, status, error) {
		    // 에러 처리 로직 작성
		    console.log(error);
		  }
		});
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
<script>

	$('.color-variant').on('click', 'li', function() {
	    // 선택된 요소에 대한 처리를 여기에 작성합니다.
	    // 선택된 요소는 $(this)를 사용하여 가져올 수 있습니다.
	    // 예를 들어, 선택된 요소의 value 값을 가져오려면 $(this).attr('value')를 사용합니다.
	    
	    // 선택된 요소의 value 값 가져오기
	    var selectedValue = $(this).attr('value');
	    
	    // 선택된 요소에 대한 처리 예시: 콘솔에 선택된 값을 출력합니다.
	    console.log('Selected value: ' + selectedValue);
	    
	    // 선택된 요소에 대한 추가 처리를 진행합니다.
	    // ...
	  });

</script>

<c:import url="../temp/commonJS.jsp"></c:import>
</body>

</html>

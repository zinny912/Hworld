<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>Product 4 Image</title>
<style>
.rate {
  display: inline-block;
  font-size: 0;
  position: relative;
  vertical-align: middle;
}

.rate input {
  display: none;
}

.rate label {
  float: right;
  color: #ddd;
  font-size: 24px;
  transition: color 0.3s;
  cursor: pointer;
  margin-right: 2px;
}

.rate label:before {
  content: "\f005";
  font-family: "Font Awesome 5 Free";
  font-weight: 900;
  padding: 2px;
}

.rate input:checked ~ label,
.rate input:hover ~ label {
  color: #ffa202;
}

.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
  color: #ffa202;
}
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
                          <div id="directList">
                          		<div class="noStock" style="display:none;">
                          			<h2 class="theme-color">선택하신 제품은 재고가 없습니다.</h2>
                          		</div>
							  <c:forEach items="${list}" var="direct" varStatus="status">
							  <div class="titlebox">
							    <div class="brand direct-item" style="font-size: 27px; color: gray;" id="productCode"
							      data-direct-code="${direct.directCode}" data-direct-price="${direct.directPrice}"
							      data-direct-stock="${direct.directStock}">
							      ${direct.value} ${direct.slicedCode} ${direct.directCode}
							    </div>
							    <div class="details-image-concept mt-0" style="font-size: 35px;" id="directName">
									  <span class="directNameValue" data-direct-name="${direct.directName}">${direct.directName}</span>
								</div>
							    <div>
							      <h3 class="mt-3 ">출고가</h3>
							    </div>
							    <p>
							      <span class="price-detail theme-color fw-bold" id="renewPrice" >${direct.directPrice}</span>
							      <span class="unit">원</span>
							    </p>
							     <input type="hidden" id="directCode" name="directCode" value="${direct.directCode}">
							      <input type="hidden" id="categoryCode" name="categoryCode" value="${direct.categoryCode}">
							      <input type="hidden" id="brandCode" name="brandCode" value="${direct.brandCode}">
							      <input type="hidden" id="slicedCode" name="slicedCode" value="${direct.slicedCode}">
							      <input type="text" id="directStock" name="directStock" value="${direct.directStock}" readonly>
							    </div>
							    </c:forEach>
							
							
							    <div class="optionArea">
							      <div class="product-option-item color">
							        <div class="option-title-area">
							          <h3 class="option-title mb-2">색상</h3>
							        </div>
							        <div class="color-types">
							          <ul class="color-variant mb-0">
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
							            <input type="radio" hidden name="saveCapacity" value="128">
							            <label for="saveCapacity" class="btn btn-outline-custom m-1 capacity">
							              <span>128G</span>
							            </label>
							          </span>
							          <span>
							            <input type="radio" hidden name="saveCapacity" value="256">
							            <label for="saveCapacity" class="btn m-1 btn-outline-custom capacity">
							              <span>256G</span>
							            </label>
							          </span>
							          <span>
							            <input type="radio" hidden name="saveCapacity" value="512">
							            <label for="saveCapacity" class="btn m-1 btn-outline-custom capacity">
							              <span>512G</span>
							            </label>
							          </span>
							        </div>
							      </div>
							     
							      <hr>
							</div>
                                
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
                                                                <span class="sub-tit" id="selectedPlanName" style="overflow: hidden; font-size: 22px; font-weight: 700; letter-spacing: -0.5px; text-overflow: ellipsis;">선택된 요금제 이름</span><br>
                                                                <h2 class="main-tit" id="dataDefaultQty" style="margin: 3px 0 3px; font-size: 16px; font-weight: 400; letter-spacing: -0.56px; padding-right: 100px;"> 데이터 무제한</h2>                                                            
                                                            </div>
                                                            <div id="resultContainer'"></div>
                                                            <div class="data" style="position: absolute; top: 35px; right: 0; text-align: right;">
                                                                <h2 class="price theme-color" id="selectedPlanPrice" style="letter-spacing: -0.2px; display: block; margin-top: 6px; color: #000; font-weight: 700;">
                                                                    선택된 요금제 금액 <span style="color:black; font-size:20px;">원/월</span>
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
                            </div>

                            <div class="tab-pane fade" id="question">
                                <div class="accordion-group-header side-type mb-4">
                                    
                                    <h2 class="left title m-0">상품 문의 (문의Count)</h2>
                                    <div class="d-flex justify-content-end">
                                        
                                        <button class="btn btn-solid-default btn-sm fw-bold me-4" style="margin-top:-25px;" data-bs-toggle="modal"
                                                            data-bs-target="#addQna">
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
                                                        <h5 class="col-7 me-5">Qna 타이틀(작성내용 앞부분 잘라서 보여주기)</h5> 
                                                        <span class="user col-1 me-5" style="font-weight:400;">회원 ID @ 제외</span>
                                                        <span class="date col-1" style="font-weight:400;">작성일</span>
                                                    </div>  
                                                    </button>
                                                    
                                                </h2>
                                                <div id="collapseThree" class="accordion-collapse collapse"
                                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                    <div class="accordion-body">
                                                        <div class="card"><!----><!---->
                                                            <div class="card-body"><!----><!---->                                                            
                                                                <span class="cate col-1">
                                                                    <span class="fw-bold text-danger">Q 회원 문의</span>
                                                                </span>
                                                                <div>
                                                                작성내용 
                                                                </div><hr>
                                                                <div class="reply-box">
                                                                    <span class="cate col-1">
                                                                        <span class="fw-bold text-danger"> A 관리자 답변</span>
                                                                    </span>
                                                                    <div>안녕하세요.
                                                                        관리자 답변 내용
                                                                    </div>
                                                                    <span class="date">관리자 답변 작성일</span>
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
<!-- 구매후기 시작 -->
                             <div class="tab-pane fade" id="review">
                                <div class="row g-4 col-12">
                                    <div class="col-md-3" style="margin-top:-20px;">
                                        <div class="customer-rating mt-5 me-5" >
                                            <h2>평점</h2>
                                  <div hidden>        
			                       <c:set var="totalRating" value="0" />
			                       ${totalRating}
									<c:forEach items="${review}" var="review">
    								<c:set var="totalRating" value="${totalRating + review.rate}" />
   										<p> 이거 뭐야  ${totalRating} </p>
									</c:forEach>
								 	</div>
									<c:set var="averageRating" value="${totalRating / review.size()}" />
										<h5 class="font-light" hidden>${averageRating}</h5>
                                            <ul class="rating my-2 d-inline-block">
							                          	<li>
											                <i class="fas fa-star ${averageRating >= 0.5 ? 'theme-color' : ''}"></i>
													    </li>
													    <li>
											                <i class="fas fa-star ${averageRating >= 1.5 ? 'theme-color' : ''}"></i>
											            </li>
											            <li>
											                <i class="fas fa-star ${averageRating >= 2.5 ? 'theme-color' : ''}"></i>
											            </li>
											            <li>
											                <i class="fas fa-star ${averageRating >= 3.5 ? 'theme-color' : ''}"></i>
											            </li>
											            <li>
											                <i class="fas fa-star ${averageRating >= 4.5 ? 'theme-color' : ''}"></i>
											            </li>
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
                                                            data-bs-target="#addReview">
                                                            후기 작성</button>
                                                    </div>
                                            </div>
                                            <h2 class="col-md-7" style="margin-top:-50px;">구매 후기</h2>
										<c:forEach items="${review}" var="review">
                                            <div class="customer-section">
                                                <div class="customer-details">
                                                    <c:set var="username" value="${fn:substringBefore(review.email, '@')}" />
														<h5>${username}</h5>
														<div class="admin-update-delete d-flex justify-content-end">
                                        <a href="javascript:void(0)" class="me-3" data-bs-toggle="modal"
                                                            data-bs-target="#updateReview" id="reviewUpdate">수정</a>
                                        <a href="javascript:void(0)" data-bs-toggle="modal"
                                                    data-bs-target="#reviewdel">삭제</a>
                                    </div>    
                                                    <ul class="rating my-2 d-inline-block">
							                          	<li>
											                <i class="fas fa-star ${review.rate >= 0.5 ? 'theme-color' : ''}"></i>
													    </li>
													    <li>
											                <i class="fas fa-star ${review.rate >= 1.5 ? 'theme-color' : ''}"></i>
											            </li>
											            <li>
											                <i class="fas fa-star ${review.rate >= 2.5 ? 'theme-color' : ''}"></i>
											            </li>
											            <li>
											                <i class="fas fa-star ${review.rate >= 3.5 ? 'theme-color' : ''}"></i>
											            </li>
											            <li>
											                <i class="fas fa-star ${review.rate >= 4.5 ? 'theme-color' : ''}"></i>
											            </li>
											        	</ul>        
													<input id="reviewNum" value="${review.num}" data-comment-num="${review.num}">
                                                    <p class="font-light" name="contents">${review.contents}</p>
                                                    <input type="hidden" id="orderNum" name="orderNum" value="${review.orderNum}">
													<input type="hidden" id="memberNum" name="memberNum" value="${review.memberNum}">
													<input type="hidden" name="slicedCode" value="${param.slicedCode}">
													
													<p class="date-custo font-light">
													<fmt:formatDate value="${review.regDate}" pattern="yyyy/MM/dd" /><span></span></p>
                                                </div>
                                               </div>
										</c:forEach>
										
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
    </section>
    <!-- Shop Section end -->

<!-- 변경하기 모달창 start -->
<div class="modal fade quick-view-modal" id="quick-view2">
    <div class="modal-dialog modal-lg modal-dialog-centered col-12">
        <div class="modal-content">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            <div class="modal-body">
                 <div>
                         <div class="row gy-4">
                             <div class="col-12">
                                 <div class="product-right">
                                     <div class="size-detail">
                                         <h6 class="mb-3 fw-bolder">요금제 선택</h6>
                                         <!-- 요금제 유형 영역, 주석처리한거 써도 되기는한데 순서가 안맞을 수 있어서 아래처럼 처리함 -->
                                         <ul class="nav border-0" style="color:black;">
                                         <c:forEach items="${existList}" var="i">
                                         	<c:if test="${i.note eq '5G 요금제'}">
                                         		<li class="nav-item">
                                          		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-1" id="">${i.note}</a>
                                          	</li>
                                         	</c:if>
                                         	<c:if test="${i.note eq '시니어 요금제'}">
                                         		<li class="nav-item">
                                          		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-2" id="tab-s">${i.note}</a>
                                          	</li>
                                         	</c:if>
                                         	<c:if test="${i.note eq '청소년 요금제'}">
                                         		<li class="nav-item">
                                          		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-3">${i.note}</a>
                                          	</li>
                                         	</c:if>
                                         	<c:if test="${i.note eq '어린이 요금제'}">
                                         		<li class="nav-item">
                                          		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-4">${i.note}</a>
                                          	</li>
                                         	</c:if>
                                         	<c:if test="${i.note eq '복지 요금제'}">
                                         		<li class="nav-item">
                                          		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-5">${i.note}</a>
                                          	</li>
                                         	</c:if>
                                         	<c:if test="${i.note eq '군인 요금제'}">
                                         		<li class="nav-item">
                                          		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-6">${i.note}</a>
                                          	</li>
                                         	</c:if>
                                         </c:forEach>
                                         <%-- <c:forEach items="${existList}" var="i" varStatus="status">
                                         	<li class="nav-item">
                                         		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-${status.count}">${i.note}</a>
                                         	</li>
                                         </c:forEach> --%>
                                         </ul>
                                         
                                         <!-- 요금제 상세 영역 -->
                                         <div class="tab-content" id="planArea">
                                         	<!-- 상세 리스트 -->
                                         	<!-- 5G -->
                                  			<c:if test="${not empty gList}">
                                         	<div class="tab-pane fade show active" id="tab-1">
                                        			<div class="row col-md-12 mt-3 mx-3">
                                          	<c:forEach items="${gList}" var="i" varStatus="status">
                                          	<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           	<div class="form-check custome-radio-box mt-1">
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainSM}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span class="fs-6">데이터 </span>
                                                  	
                                                  	<span class="fw-bold fs-6">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
                                         	<!-- 시니어 -->
											<c:if test="${not empty sList}">
												<div class="tab-pane fade" id="tab-2">
                                        			<div class="row col-md-12 mt-3 mx-3">
                                          	<c:forEach items="${sList}" var="i" varStatus="status">
                                          		<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           	<div class="form-check custome-radio-box mt-1">
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainSM}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span class="fs-6">데이터 </span>
                                                  	
                                                  	<span class="fw-bold fs-6">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
											</c:if>
											<!-- 청소년 -->
											<c:if test="${not empty tList}">
											<div class="tab-pane fade" id="tab-3">
                                        			<div class="row col-md-12 mt-3 mx-3">
                                          	<c:forEach items="${tList}" var="i" varStatus="status">
                                           	<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           	<div class="form-check custome-radio-box mt-1">
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainSM}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span class="fs-6">데이터 </span>
                                                  	
                                                  	<span class="fw-bold fs-6">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>

												<!-- 어린이 -->
												<c:if test="${not empty zList}">
												<div class="tab-pane fade" id="tab-4">
                                        			<div class="row col-md-12 mt-3 mx-3">
                                          	<c:forEach items="${zList}" var="i" varStatus="status">
                                           	<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           	<div class="form-check custome-radio-box mt-1">
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainSM}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span class="fs-6">데이터 </span>
                                                  	
                                                  	<span class="fw-bold fs-6">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
											<!-- 복지 -->
											<c:if test="${not empty wList}">
											<div class="tab-pane fade" id="tab-5">
                                        			<div class="row col-md-12 mt-3 mx-3">
                                          	<c:forEach items="${wList}" var="i" varStatus="status">
                                           	<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           	<div class="form-check custome-radio-box mt-1">
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainSM}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span class="fs-6">데이터 </span>
                                                  	
                                                  	<span class="fw-bold fs-6">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
												<!-- 군인 -->
												<c:if test="${not empty hList}">
												<div class="tab-pane fade" id="tab-6">
                                        			<div class="row col-md-12 mt-3 mx-3">
                                          	<c:forEach items="${hList}" var="i" varStatus="status">
                                           	<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           	<div class="form-check custome-radio-box mt-1">
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainSM}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span class="fs-6">데이터 </span>
                                                  	
                                                  	<span class="fw-bold fs-6">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
										
	 										<div class="col-12">
                                         	<div class="product-btns">
                                                <button onclick="sendSelectedValue()" type="button"  class=" btn btn-solid-default btn-lg col-md-3 d-block mx-auto"
                                                    data-bs-dismiss="modal">선택하기</button>
                                            </div>
                                            </div>
                                         
                                         </div>
                                
                                    </div>
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
		     <div class="modal payment-modal" id="addReview">
		        <div class="modal-dialog modal-dialog-centered">
		           <div class="modal-content">
		                 <div class="modal-header">
		                     <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
		                 </div>
                       		<form action="/direct/reviewAdd" method="post">
                            	<div class="modal-body">
								<ul>
								    <li>
								        <label class=""> 상품명</label>
								        <span class="mx-3">|</span>
								        <span class="fw-bold" id="directName2"></span>
								    </li>
								</ul>
                                 <ul>
                                 <li>
                                    <label  class="form-label mt-3" style="vertical-align: middle;'">평점</label>
		                                 <div class="rate">
										<input type="radio" id="star1" name="rate" value="5">
											<label for="star1"></label>
										<input type="radio" id="star2" name="rate" value="4">
											<label for="star2"></label>
										<input type="radio" id="star3" name="rate" value="3">
											<label for="star3"></label>
										<input type="radio" id="star4" name="rate" value="2">
											<label for="star4"></label>
										<input type="radio" id="star5" name="rate" value="1">
											<label for="star5"></label>
										</div>
								</li>		
                                    </ul>
                                    <div class="mb-4 mt-2">
                                        <label for="contents" class="form-label" >구매 후기</label>
                                        <textarea class="form-control col-12"  placeholder="간단한 후기를 작성해주세요." id="contents" name="contents" value=""></textarea>
                                    </div>   
                              </div>
                              <label for="orderNum" class="form-label" >주문번호</label>
                                <input type="text" id="orderNum" name="orderNum">
                                <label for="memberNum" class="form-label" >회원번호</label>
								<input type="text" id="memberNum" name="memberNum">
								<input type="hidden" name="slicedCode" value="${param.slicedCode}">
                                    <div class="modal-footer pt-0 text-end d-block">
                                        <button type="button" class="btn btn-solid-default btn-sm" data-bs-dismiss="modal" onclick="form.submit()">작성</button>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
  
    <!-- 리뷰작성 모달 End -->
    
   <!-- 리뷰 수정 모달 -->
		     <div class="modal payment-modal" id="updateReview">
		        <div class="modal-dialog modal-dialog-centered">
		           <div class="modal-content">
		                 <div class="modal-header">
		                     <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
		                 </div>
                       		<form action="/direct/reviewUpdate" method="post">
                            	<div class="modal-body">
								<ul>
								    <li>
								        <label class=""> 상품명</label>
								        <span class="mx-3">|</span>
								        <input class="fw-bold" id="directName2" name="productName" value="" readonly>
								    </li>
								</ul>
                                 <ul>
                                 <li>
                                    <label  class="form-label mt-3" style="vertical-align: middle;'" for="rate" value="">평점</label>
		                                 <div class="rate">
										<input type="radio" id="star1" name="rate" value="5">
											<label for="star1"></label>
										<input type="radio" id="star2" name="rate" value="4">
											<label for="star2"></label>
										<input type="radio" id="star3" name="rate" value="3">
											<label for="star3"></label>
										<input type="radio" id="star4" name="rate" value="2">
											<label for="star4"></label>
										<input type="radio" id="star5" name="rate" value="1">
											<label for="star5"></label>
										</div>
								</li>		
                                    </ul>
                                    <div class="mb-4 mt-2">
                                        <label for="contents" class="form-label" >구매 후기</label>
                                        <textarea class="form-control col-12"  placeholder="간단한 후기를 작성해주세요." id="contents" name="contents" value=""></textarea>
                                    </div>   
                              </div>
                              <label for="orderNum" class="form-label" >주문번호</label>
                                <input type="text" id="orderNum" name="orderNum" value="">
                                <label for="memberNum" class="form-label" >회원번호</label>
								<input type="text" id="memberNum" name="memberNum" value="">
								<input type="text" name="slicedCode" value="${param.slicedCode}">
                                    <div class="modal-footer pt-0 text-end d-block">
                                        <button type="button" class="btn btn-solid-default btn-sm" data-bs-dismiss="modal" onclick="form.submit()">작성</button>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
       <!-- 리뷰 수정 모달 end -->                 
    
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
	const commaPrice = function(){
    const prices = document.querySelectorAll('[id^="renewPrice"]');
    for (var i = 0; i < prices.length; i++) {
        const price = parseInt(prices[i].innerHTML);
        const renewPrice = price.toLocaleString();
        prices[i].innerHTML =renewPrice;
        }
</script>
<script src="../assets/js/newDirectCode.js"></script>
<script src="../assets/js/updateReview.js"></script>
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




<!--  하단 금액 바 고정하는 JS -->
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
  // 후기 작성 버튼 클릭 시 모달 창이 열릴 때 실행되는 함수
  $('#addReview').on('show.bs.modal', function (event) {
    const directName = $('.directNameValue').data('direct-name'); // 해당 후기 작성 버튼에 연결된 제품의 directName 값을 가져옴
    $('#directName2').text(directName); // 모달 창 내에서 제품명을 표시하는 곳에 directName 값을 설정
  });
</script>
<script>
function sendSelectedValue() {
    // 선택한 값을 가져오기
    const selectedValue = document.querySelector('input[name="planNum"]:checked').value;

    alert("선택한 값: " + selectedValue);
    // Ajax 요청 보내기
    $.ajax({
        url: '/direct/selectedPlan', // 선택한 값을 처리할 JSP 페이지의 URL
        method: 'POST',
        data: { planNum: selectedValue },
        success: function(result) {
            // Ajax 요청이 성공한 경우의 처리
            
           
            console.log(result.planName);
            // 선택한 값이 서버로 전달되었고, 서버에서 필요한 처리를 한 후 응답을 받을 수 있습니다.
            console.log('선택한 값이 서버로 전달되었습니다.');
            // 추가적인 처리나 리다이렉션 등을 수행할 수 있습니다.
            // 데이터를 이전 페이지로 전달하기 위해 쿼리 문자열을 생성합니다.
            // 결과를 특정 HTML 요소에 입력해주기
    var resultContainer = document.getElementById('resultContainer');
    resultContainer.textContent = result; // 결과를 텍스트로 설정하거나
    //resultContainer.innerHTML = result; // 결과를 HTML로 설정할 수도 있습니다.
            
            // 이전 페이지로 리다이렉션합니다.
           location.href = '/direct/phoneDetail?slicedCode='+ slicedCode;
        },
        error: function(xhr, status, error) {
            // Ajax 요청이 실패한 경우의 처리
            console.error('Ajax 요청이 실패하였습니다:', error);
            console.log('나는야 ', result);
            
            // 실패 시에 대한 처리를 수행할 수 있습니다.
        }
    });
}
</script>


<!--<script>
    // JavaScript를 사용하여 orderNum과 memberNum 값을 설정
    const orderNumInput = document.getElementById('orderNum');
    const memberNumInput = document.getElementById('memberNum');

    // 로그인한 사용자의 구매내역에서 orderNum과 memberNum 값을 가져와서 설정
    const orderNum = '구매 내역에서 가져온 값';
    const memberNum = '구매 내역에서 가져온 값';

    orderNumInput.value = orderNum;
    memberNumInput.value = memberNum;
</script> -->


<c:import url="../temp/commonJS.jsp"></c:import>
</body>

</html>

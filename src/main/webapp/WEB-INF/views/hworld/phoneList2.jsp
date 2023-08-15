<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
   <c:import url="../temp/style.jsp"></c:import>
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
       
        .product-style-2 .product-box .product-details h5 {
				  white-space: normal;
				  overflow: visible;
				  text-overflow: unset;
				}
				
h3.d-flex span {
  vertical-align: baseline;
  position: relative;
  top: 5px; /* 원하는 위치로 조정 */
}
   </style>
</head>

<body class="theme-color2 light ltr">


    <c:import url="../temp/header.jsp"></c:import>



    <!-- Breadcrumb section start -->
    <section class="breadcrumb-section section-b-space">
        <ul class="circles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3>휴대폰</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Phone</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->

    <!-- Shop Section start -->
    <section class="section-b-space">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12 ratio_30">
                    <div class="row gx-4 gy-5">
                        <div class="col-12">
                            <div class="filter-show-button mb-3">
                                <a href="javascript:void(0)" class="mobile-filter border-top-0">
                                    
                                </a>
                            </div>
                        </div>

                        <div class="col-12 m-0">
                            <div class="top-filter-section">
                                <ul>
                                    <li class="back-btn">
                                        <div class="mobile_back text-end">
                                            <span>Back</span>
                                            <i aria-hidden="true" class="fa fa-angle-right ps-2"></i>
                                        </div>
                                    </li>

                                   <div class="mx-2 col-2 brandList">
									    <li class="onclick-title">
									        <h6 class="text-center" id="selectedBrand"></h6>
									        <ul class="onclick-content">
									            <li>
									                <div class="form-check ps-0 custome-form-check">
									                    <input class="checkbox_animated check-it" type="checkbox" id="appleCheck" name="brandCode" value="A" checked>
									                    <label class="form-check-label" for="appleCheck">애플</label>
									                </div>
									            </li>
									            <li>
									                <div class="form-check ps-0 custome-form-check">
									                    <input class="checkbox_animated check-it" type="checkbox" id="samsungCheck" name="brandCode" value="S" checked>
									                    <label class="form-check-label" for="samsungCheck">삼성</label>
									                </div>
									            </li>
									        </ul>
									    </li>
									</div>

                                	<div class="mx-2 col-2">
	                                    <li class="onclick-title text-center" style="height:38px;">                                    
	                                        <a href="javascript:void(0)" style="color: black;  position: relative; top: -2px;" data-bs-toggle="modal" id="selectedPlan" data-bs-target="#planTB"> 
	                                            요금제
	                                        </a>
	                                    </li>
                                	</div>
                                	<div class="mx-2 col-2">
                                    	<li class="onclick-title">
                                        	<h6 class="text-center" id="selectedDiscount">할인방법</h6>
	                                        <ul class="onclick-content">
	                                            <li>
	                                                <div class="form-check ps-0 custome-form-check">
	                                                    <input class="checkbox_animated check-it" type="checkbox"
	                                                        id="disKind1" name="disKind" value="1" >
	                                                    <label class="form-check-label" for="disKind">선택약정 (12개월)</label>
	                                                </div>
		                                            </li>
	                                            <li>
	                                                <div class="form-check ps-0 custome-form-check">
	                                                    <input class="checkbox_animated check-it" type="checkbox"
	                                                        id="disKind2"  name="disKind" value="2">
	                                                    <label class="form-check-label" for="disKind">선택약정 (24개월)</label>
	                                                </div>
	                                            </li>
	                                            <li>
	                                                <div class="form-check ps-0 custome-form-check">
	                                                    <input class="checkbox_animated check-it" type="checkbox"
	                                                        id="disKind3" name="disKind" value="0" checked>
	                                                    <label class="form-check-label" for="disKind">공시지원금 (24개월)</label>
	                                                </div>
	                                            </li>
                                           
                                        	</ul>
                                    	</li>
                                	</div>

                              </ul>
                              <div class="col-md-12">
                              <input type="hidden" id="planPrice" name="planPrice" data-plan-price2="" value="88000">
                              <input type="hidden" id="planNum" name="planNum" value="G01">
                              <input type="hidden" style="border:0; font-size:20px;" id="selectedPlanName" name="planName" value="5G 프리미어">
	                         <input type="text" id="disKind" name="disKind" > 
	                         </div>               
                            </div>
                        </div>
                   </div>
                  
                  
                    <div class="row g-4">

                        <!-- label and featured section -->
                        
                        <div class="col-12">
                            <div class="filter-options">
                                <div class="select-options">
                                    <div class="page-view-filter">
                                        <div class="dropdown select-featured">
                                            <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                정렬
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								                <li>
								                    <a class="dropdown-item"  href="phoneList">최신순</a>
								                </li>
								                <li>
								                    <a class="dropdown-item" href="phoneList?sortType=priceLow">낮은 가격순</a>
								                </li>
								                <li>
								                    <a class="dropdown-item" href="phoneList?sortType=priceHigh">높은 가격순</a>
								                </li>
								            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="grid-options d-sm-inline-block d-none">
                                    <ul class="d-flex">
                                        <li class="two-grid">
                                            <a href="javascript:void(0)">
                                                <img src="/assets/svg/grid-2.svg" class="img-fluid blur-up lazyload"
                                                    alt="">
                                            </a>
                                        </li>
                                        <li class="three-grid d-md-inline-block d-none">
                                            <a href="javascript:void(0)">
                                                <img src="/assets/svg/grid-3.svg" class="img-fluid blur-up lazyload"
                                                    alt="">
                                            </a>
                                        </li>
                                        <li class="grid-btn d-lg-inline-block d-none">
                                            <a href="javascript:void(0)">
                                                <img src="/assets/svg/grid.svg" class="img-fluid blur-up lazyload"
                                                    alt="">
                                            </a>
                                        </li>
                                        <li class="five-grid active d-xl-inline-block d-none">
                                            <a href="javascript:void(0)">
                                                <img src="/assets/svg/grid-5.svg" class="img-fluid blur-up lazyload"
                                                    alt="">
                                            </a>
                                        </li>
                                        
                                    </ul>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    </div>
                    <!-- label and featured section -->

                    <!-- Prodcut setion -->
                    <div
                        class="row g-sm-4 g-3 row-cols-xl-5 row-cols-lg-4 row-cols-md-3 row-cols-2 gx-sm-4 gx-3 mt-1 custom-gy-5 product-style-2 ratio_asos product-list-section"> 
	                   <c:forEach items="${list}" var="direct">
	                   <div>
	                   		<div class="product-box">
	                                <div class="img-wrapper">
	                                    <div class="front">
	                                        <a href="./phoneDetail?slicedCode=${direct.slicedCode}">
	                                            <img src="/assets/images/electronics/product/${direct.slicedCode}thumb.jpg"
	                                                class="bg-img" alt="">
	                                        </a>
	                                    </div>
	                                </div>
  
				                   <div class="product-details">
			                           <div class="rating-details">
			                                     <span class="font-light grid-content">${direct.slicedCode}
			                                     <input type="hidden" id="directCode_${direct.directCode}" name="directCode" value="${direct.directCode}">
			                                     </span>
			                                     
			                           <ul class="rating mt-0">
			                          	<li>
							                <i class="fas fa-star ${direct.rate >= 0.5 ? 'theme-color' : ''}"></i>
									    </li>
									    <li>
							                <i class="fas fa-star ${direct.rate >= 1.5 ? 'theme-color' : ''}"></i>
							            </li>
							            <li>
							                <i class="fas fa-star ${direct.rate >= 2.5 ? 'theme-color' : ''}"></i>
							            </li>
							            <li>
							                <i class="fas fa-star ${direct.rate >= 3.5 ? 'theme-color' : ''}"></i>
							            </li>
							            <li>
							                <i class="fas fa-star ${direct.rate >= 4.5 ? 'theme-color' : ''}"></i>
							            </li>
							        	</ul>        
									</div>
									
		                            <div class="main-price">
		                               <h5 class="ms-0"> <a href="./phoneDetail?slicedCode=${direct.slicedCode}" class="font-default">
		                                    ${direct.directName}
		                                </a></h5>
		                              </div>  
		                                
		                                
		                                <h6 class="d-flex mt-3" style="color:gray;" >휴대폰
		                                <span class="num" style="margin-left: auto;" id="out_phonePayPrice"></span>
		                                </h6>
		                                <h6 class="d-flex mt-1" style="color:gray;">요금제
		                                <span class="num" style="margin-left: auto;" id="out_planPrice"></span>
		                                </h6>
		                                <hr>
		                                <a href="./phoneDetail?slicedCode=${direct.slicedCode}">
		                                <h4 class="num theme-color text-end" id="totalPrice">
		                                </h4></a>
		                                <input type="hidden" value="${direct.initPrice}"> 
						             
		                            <div>
		                            <input type="hidden" id="selectedDisKind" name="disKind">

		                            </div>
		                            <div>
		                            <input type="hidden" id="planNum2" value="G01">
		                            </div>
                        		 </div>
		                       </div>
		                   </div>
                   </c:forEach>
                  </div>
                        
                    <!-- Prodcut setion -->
                    
                        <nav class="page-section d-flex justify-content-end" style="position: relative;">
                            <ul class="pagination mx-auto">
                                <li class="page-item ${pager.pre ? '' : 'disabled' }">
                                    <a class="page-link " href="phoneList?page=${pager.startNum-1}" aria-label="Previous">
                                        <span aria-hidden="true">
                                            <i class="fas fa-chevron-left"></i>
                                        </span>
                                    </a>
                                </li>
                                <li class="page-item active">
                                   <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
						   	                    <li class="page-item">
						                        	<a class="page-link" href="phoneList?page=${i}">${i}</a>
						                    	</li>
						           </c:forEach>
                                </li>

                                <li class="page-item ${pager.next ? '' : 'disabled' }">
                                    <a class="page-link" href="phoneList?pag=${pager.lastNum+1}" aria-label="Next">
                                        <span aria-hidden="true">
                                            <i class="fas fa-chevron-right"></i>
                                        </span>
                                    </a>
                                </li>
                            </ul>                    
                            <a href="directAdd" class="btn btn-solid-default m-1" style="position: absolute">상품 등록</a>
                        </nav>
                   
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section end -->

   

<!-- 변경하기 모달창 start -->
<div class="modal fade quick-view-modal" id="planTB">
    <div class="modal-dialog modal-xl modal-dialog-centered col-12">
        <div class="modal-content">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            <div class="modal-body">
                 <div>
                         <div class="row gy-4">
                             <div class="col-12">
                                 <div class="product-right">
                                     <div class="size-detail">
                                         <h6 class="mb-3 mx-3 fw-bolder">요금제 선택</h6>
                                         <!-- 요금제 유형 영역, 주석처리한거 써도 되기는한데 순서가 안맞을 수 있어서 아래처럼 처리함 -->
                                         <ul class="nav border-0" style="color:black;">
                                         <c:forEach items="${existList}" var="i">
                                         	<c:if test="${i.note eq '5G 요금제'}">
                                         		<li class="nav-item" style="margin-left:1.5%;">
                                          		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-1" id="">${i.note}</a>
                                          	</li>
                                         	</c:if>
                                         	<c:if test="${i.note eq '시니어 요금제'}">
                                         		<li class="nav-item ">
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
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}"data-gb-value="${i.dataCapacity}"  data-plan-price="${i.planPrice}" data-dp="${i.disCode}" <c:if test="${status.index eq 0}">checked</c:if> />
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainS}
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
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold" id="renewPrice${i.planNum}">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
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
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disCode}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainS}
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
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold" id="renewPrice${i.planNum}">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
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
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disCode}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainS}
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
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold"id="renewPrice${i.planNum}">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
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
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disCode}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainS}
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
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold" id="renewPrice${i.planNum}">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
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
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disCode}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainS}
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
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold" id="renewPrice${i.planNum}">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
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
                                         				<input type="radio" name="planNum" class="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disCode}"/>
                                         				<label class="form-check-label fs-5" for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis fs-6 mx-3" style="color:gray;">
                                                  		${i.planExplainS}
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
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fs-6 fw-bold" id="renewPrice${i.planNum}">${i.planPrice}</span><span class="fs-6">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
										
	 										<div class="col-12">
                                         	<div class="product-btns">
                                                <button onclick="onSelectConfirm()" type="button"  class=" btn btn-solid-default btn-lg col-md-3 d-block mx-auto"
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
 <!-- tap to top Section Start -->
<!--    <div class="tap-to-top">
        <a href="#home">
            <i class="fas fa-chevron-up"></i>
        </a>
    </div>  -->
    <!-- tap to top Section End -->
 <c:import url="../temp/footer.jsp"></c:import>

 

    <!-- Price Filter js -->
    <script src="/assets/js/price-filter.js"></script>

    <!--Plugin JavaScript file-->
    <script src="/assets/js/ion.rangeSlider.min.js"></script> 

    <!-- Filter Hide and show Js -->
    <script src="/assets/js/filter.js"></script>

 <script>
$(document).ready(function() {
    const prices = document.querySelectorAll('[id^="renewPrice"]');
    for (var i = 0; i < prices.length; i++) {
        const price = parseInt(prices[i].innerHTML);
        const renewPrice = price.toLocaleString();
        prices[i].innerHTML =renewPrice ;
       	
    }
});
</script>
<script>
//체크박스 변경 이벤트 리스너 등록
const checkboxes = document.querySelectorAll('input[name="brandCode"]');
checkboxes.forEach(checkbox => {
    checkbox.addEventListener('change', function() {
        filterByBrand();
        
    });
});

//브랜드별로 리스트 필터링하는 함수
function filterByBrand() {
    const selectedBrands = Array.from(document.querySelectorAll('input[name="brandCode"]:checked')).map(checkbox => checkbox.value);
    
    const productList = document.querySelectorAll('.product-box');
    productList.forEach(product => {
        const directCode = product.querySelector('input[name="directCode"]').value;
        const brandCode = directCode[4]; // directCode에서 다섯 번째 문자 추출
        
        if (selectedBrands.includes(brandCode)) {
            // 선택된 브랜드가 포함되거나 전체 선택이면 보여줌
            product.style.display = 'block';
            
            if (selectedBrands.includes('A') && selectedBrands.includes('S')) {
                $('#selectedBrand').text('전체 브랜드').removeClass().addClass('text-center');
            } else if (selectedBrands.includes('S')) {
                $('#selectedBrand').text('삼성').addClass('theme-color');
            } else if (selectedBrands.includes('A')) {
                $('#selectedBrand').text('애플').addClass('theme-color');
            } else {
                $('#selectedBrand').text('선택없음');
            }
        } else {
        	product.style.display = 'none';
        	if(selectedBrands.length===0){
        		$('#selectedBrand').text('브랜드 선택').addClass('theme-color');
            
        	}
        }
    });
}

// 페이지 로딩 후 초기 필터링 실행
filterByBrand();

// 체크박스 변경 이벤트 리스너 등록
$('input[name="brandCode"]').on('change', filterByBrand);


//모달창에서 값을 선택하고 확인 버튼을 클릭했을 때 호출되는 함수
function onSelectConfirm() {
  // 선택한 값을 가져오기
  const selectedValue = document.querySelector('input[name="planNum"]:checked');
  const planNameLabel = document.querySelector('label[for="' + selectedValue.id + '"]');
  const planName = planNameLabel.innerText;
  const planPrice = selectedValue.getAttribute('data-plan-price');
  const planNum = selectedValue.getAttribute('value');
  
  // 가져온 값을 입력하기
  setSelectedPlan(planName, planPrice, planNum);
}


//모달창에서 선택한 값을 입력하는 함수
function setSelectedPlan(planName, planPrice, planNum) {
  // 선택한 요금제, 가격, 데이터 정보 가져오기
  document.getElementById('selectedPlanName').value = planName;
  document.getElementById('planPrice').setAttribute('data-plan-price2', planPrice);
  document.getElementById('planPrice').value=planPrice;
  document.getElementById('planNum').value = planNum;
  $('#selectedPlan').text(planName).addClass('theme-color');
  
//선택한 요금제 정보를 리스트 항목에 입력
  $('.product-details').each(function() {
    $(this).find('#planNum2').val(planNum);
    
  });

}

 $(document).ready(function() {
    // 페이지 로딩 시에 기본값인 공시지원금의 값을 입력란에 설정
    $('.product-details').each(function() {
        const defaultValue = $('input[name="disKind"][value="0"]').val();
        $(this).find('#selectedDisKind').val(defaultValue);
    });
    
    $('input[name="disKind"], input[name="planNum"]').change(function() {
        calculateMonthlyPay();
    });


    // 할인유형 체크박스 변경 이벤트 핸들러
    $('input[name="disKind"]').change(function() {
        const selectedValue = $(this).val();
        const disKindSelect = $('#disKind').val(selectedValue);

        // 다른 체크박스 해제
        $('input[name="disKind"]').not(this).prop('checked', false);

        if ($(this).is(':checked')) {
            // 선택된 할인유형의 값을 입력란에 설정
            $('.product-details').each(function() {
                $(this).find('#selectedDisKind').val(selectedValue);
                if(selectedValue==0){
                	$('#selectedDiscount').text('공시지원금(24개월)').addClass('theme-color');
                }else if(selectedValue==1) {
               		$('#selectedDiscount').text('선택약정(12개월)').addClass('theme-color');	
                }else {
                	$('#selectedDiscount').text('선택약정(24개월)').addClass('theme-color');
                }
            });
        } else {
            // 선택약정 체크 해제됨
            // 기본값인 공시지원금 체크박스 선택
            $('input[name="disKind"][value="0"]').prop('checked', true);

            // 기본값인 공시지원금의 값을 입력란에 설정
            $('.product-details').each(function() {
                const defaultValue = $('input[name="disKind"][value="0"]').val();
                $(this).find('#selectedDisKind').val(defaultValue);
                
            });
        }

        // 함수 호출
        calculateMonthlyPay();
    });

    // 함수 정의
    function calculateMonthlyPay() {
        let directCodes = [];
        $('.product-box').each(function() {
            let directCode = $(this).find('input[name="directCode"]').val();
            directCodes.push(directCode);
        });

        let planNum = $('input[name=planNum]:checked').val(); // 요금제번호
        let disKind = $('input[name=disKind]:checked').val(); // 할인유형

        $('#out_phonePayPrice').text('');
        $('#out_planPrice').text('');
        $('#totalPrice').text('');

        let ajaxRequests = [];

        $('.product-box').each(function() {
            let productBox = $(this);
            let directCode = productBox.find('input[name="directCode"]').val();

            let ajaxRequest = $.ajax({
                type: 'GET',
                url: './calMonthlyPay',
                dataType: 'JSON',
                data: {
                    directCode: directCode,
                    disKind: disKind,
                    planNum: planNum
                }
            });

            ajaxRequests.push(ajaxRequest);
        });

        // 모든 ajax 요청이 완료되면 결과 출력
        $.when.apply(null, ajaxRequests).done(function() {
            for (let i = 0; i < arguments.length; i++) {
                let response = arguments[i][0];
                let productBox = $('.product-box').eq(i);

                let out_phonePayPrice = response.out_phonePayPrice;
                let out_planPrice = response.out_planPrice;
                let totalPrice = response.out_phonePayPrice * 1 + response.out_planPrice * 1;

                // 해당 리스트 항목에 결과 출력
                productBox.find('#out_phonePayPrice').text(out_phonePayPrice.toLocaleString()+'원/월');
                productBox.find('#out_planPrice').text(out_planPrice.toLocaleString()+'원/월');
                productBox.find('#totalPrice').text(totalPrice.toLocaleString()).append('<span style="font-size:14px;">원/월</span>');
            }
        }).fail(function(error) {
            // 에러 처리 로직 작성
            console.log(error);
        });
    }

    // 페이지 로딩 후 함수 실행
    calculateMonthlyPay();
    
});

 </script>


    
</body>

</html>
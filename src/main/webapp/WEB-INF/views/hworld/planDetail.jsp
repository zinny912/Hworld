<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>    
    <title>요금 상세페이지</title>
 <style>
    .boxone {
    	width:70%;
    	padding-right: 5%;
    	display:absolute;
    }
    
    .boxtwo {   
    	width:30%;
    	display:absolute;
    }

    .login-section {
        background-color: #fff;
    }

    .box{
        border:1px solid black;  
    }
    
    .zcustom-box {
        width: 100%;
        max-width: 1000px;
        border-radius: 10px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        border:1px solid darkgray;
        padding:50px 30px;
        margin:5% auto;
        background-color: fff;
        position:relative;
        display: flex;
  		flex-wrap: wrap;
 
    }
    .zcustom-box h3 {
        color:black;
        text-align:center;
        margin-top:20px;
        display:block;
    }
    .zcustom-box li{
        margin-right:10px;
  
    }
    .zcustom-box img {
        max-width:90px;
        position:relative;   
    }
    
    .zbox{
	    width:100%;
	    max-width:100%;
	    white-space: nowrap;
	    margin-left:-50px;
	    margin-top:15px;
	   	box-sizing: border-box;
    }
    
    .hbox {
        border-right: 2px lightgray solid;
        margin-left :30px;
        margin-right :20px;  
        padding-right:30px;
        white-space: nowrap;
        display:inline-block; 
    }
    .hbox1 {
        border-right: 0px lightgray solid;
        margin-left :30px;
        display:inline-block;
        white-space: nowrap;
    }

    .modal-dialog .modal-content{
        width: 60%;
        margin-left:15%;
    }
    
    
     /* 통신사 선택 페이지 버튼 */
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
                    <h3>요금제 상세페이지</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">5G</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->

    <!-- Shop Section start -->
    <section>
        <div class="container">
            <div class="material-details">
                <div class="title title1 title-effect title-left">
                    <h2>${planNote.note}</h2>
                </div>
            </div>
                <div class="row gx-4 gy-5">
                    <div class="col-12">
                        <div class="details-items">
                            <div class="row g-4">
                                <div class="col-md-12 ">
                                <c:if test="${memberVO.adminCheck == 0 }">
                                    <div class="justify-content-start" style="margin-top:-20px;">
                                        <a href="zyougeumje_detail_edit.html" class="me-3">수정</a>
                                        <a href="javascript:void(0)" data-bs-toggle="modal"
                                                        data-bs-target="#yogeumdel">삭제</a>
                                    </div>
                                </c:if>    
                                    <div class="details-image-concept" >
                                        <span class="text-start" style="font-size:30px; font-weight: 700;">${planVO.planName}  </span>
                                        <c:if test="${planVO.dataCapacity eq '무제한'}">
                                        <span style="font-size:30px; font-weight: 500;"> (데이터 + 통화 + 문자 무제한)</span>
                                        </c:if>
                                        <c:if test="${planVO.dataCapacity ne '무제한'}">
                                        <span style="font-size:30px; font-weight: 500;"> (데이터 ${planVO.dataCapacity}GB + 통화 & 문자 무제한)</span>
                                        </c:if>
                                    </div>
                                    <h3 class="text-start" style="color:gray;"> ${planVO.planExplain} </h3>
                                        <div class="container ">
                                        	<div class="zcustom-box">
		                                    	<div class="boxone">
		                                            <ul>
		                                                <li class="hbox">
		                                                    <img src="/assets/images/cloud.png" >
		                                                    <h3> ${planVO.dataCapacity} </h3>
		                                                </li>
		                                                <li class="hbox">
		                                                    <img src="/assets/images/phone-call.png">
		                                                    <h3> 기본제공 </h3>
		                                                </li>
		                                                <li class="hbox1">
		                                                    <img src="/assets/images/sms.png">
		                                                    <h3> 기본제공 </h3>
		                                                </li>
		                                            </ul>  
		                                        </div>
	                                            <div class="boxtow">
	                                               <div class="container text-center zbox " style="margin-right:-150px;">
	                                               		<div class="col" style="margin-left:-50px;">
	                                                    <span class="theme-color fs-4 fw-bold ">월 </span><span class="theme-color fs-3 fw-bold data-comma" style="margin:0px 8px;" >${planVO.planPrice}</span><span class="theme-color fs-5 fw-bold">원 </span>
	                                                        <span class="label-text">(부가세 포함)</span>
	                                                        </div>
	                                                            <div class="" style="margin-top:30px;">
	                                                            <div class="product-buttons justify-content-center">
	                                                                <!-- 가입자 본인인증 모달 버튼 요금제변경 start -->
	                                                                <c:choose>
	                                                                <c:when test="${memberVO.ownCheck == 0 }">
	                                                              
	                                                                <a href="javascript:void(0)" data-bs-toggle="modal"
	                                                                    data-bs-target="#quick-view" class="btn btn-solid hover-solid btn-animation rounded-3" disabled>
	                                                                    <span>요금제 변경</span> 
	                                                                </a>
	                                                               
	                                                                <a href="javascript:void(0)" data-bs-toggle="modal" id="changeTelecoms" data-bs-target="#changeTelecom"
	                                                                    class="btn btn-solid hover-solid btn-animation rounded-3 "> 
	                                                                <span>번호이동</span>
	                                                                </a>
	                                                                </c:when>
	                                                                <c:otherwise>
	                                                                <a href="javascript:void(0)" data-bs-toggle="modal"
	                                                                    data-bs-target="#quick-view" class="btn btn-solid hover-solid btn-animation rounded-3">
	                                                                    <span>요금제 변경</span> 
	                                                                </a>
	                                                                <a href="javascript:void(0)" data-bs-toggle="modal" id="changeTelecoms" data-bs-target="#changeTelecom"
	                                                                    class="btn btn-solid hover-solid btn-animation rounded-3 " disabled> 
	                                                                <span>번호이동</span>
	                                                                </a>
	                                                                </c:otherwise>
	                                                                </c:choose>
	                                                            </div>
		                                                        <div class="btn product-buttons justify-content-center" disabled>
		                                                                    <span>이미 사용중인 요금제입니다.</span> 
		                                                        </div>
	                                                     		</div>
	                                             	</div>
                                               	</div>  
                                        	</div>
                                		</div>
	                                <div>
		                                <ul class="product-count shipping-order">
		                                    <li>
		                                        <span class="lang">기존 이용고객분들은 위약금 발생에 유의해주세요.</span>
		                                    </li>
		                                </ul>
	                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                        <div class="container">
                            <div class="col-12">
                                <div class="cloth-review">
                                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                        <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab"
                                            data-bs-target="#desc" type="button">상세정보</button>
                                    </div>
                                    <div class="tab-content" id="nav-tabContent">
                                    <div class="tab-pane fade show active" id="desc">
                                    <div class="shipping-chart">
                                    <div class="part">
                                        <h4 class="inner-title mb-2">상세정보 쓰세요</h4>
                                        <p class="font-light fs-6">국내에서 속도 제한 없이 데이터 무제한 이용 가능합니다.</p>
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

<!-- 가입자 본인인증 모달창 start -->
     <div class="modal fade quick-view-modal" id="quick-view">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row gy-4"> 
                            <!-- 가입자본인인증 Start -->
                            <div class="login-section">
                                <div class="materialContainer">
                                            <div class="login-title">
                                                <h2>가입자 본인인증</h2>
                                            </div>
                                            <div class="input">
                                                <label for="name">이름</label>
                                                <input type="text" name="name" id="name">
                                                <span class="spin"></span>
                                            </div>
                                        <div class="row">
                                            <div class="boxone">
                                                <div class="input">
                                                    <label for="resident1">주민등록번호 앞 6자리</label>
                                                    <input type="text" name="resident1" id="resident1">
                                                    <span class="spin"></span>
                                                </div>
                                            </div>
                                            <div class="boxtwo">
                                                <div class="input">
                                                    <label for="resident2">주민등록번호 뒤 7자리</label>
                                                    <!-- 유효성 넣고 주민번호 뒤에자리 2******걸어줘야함 -->
                                                    <input type="text" name="resident2" id="resident2">
                                                    <span class="spin"></span>
                                                </div>
                                            </div>
                                        </div>
                                            <div class="input mb-5">
                                                <label for="pass">비밀번호</label>
                                                <input type="password" name="pass" id="pass">
                                                <span class="spin"></span>
                                            </div>
                                        <!-- 약관동의 드랍다운 start -->
                                                <div class="text-center">
                                                    <h3 class="mb-3 "for="compass">약관동의 및 안내사항</h3>
                                                    <section style="margin-top:-65px;">
                                                        <div class="container">
                                                            <div class="row gx-4 gy-5">
                                                                <div class="category-option">
                                                                    <div class="accordion category-name" id="accordionExample">
                                                                        <div class="accordion-item category-rating">
                                                                            <h2 class="accordion-header" id="headingThree">
                                                                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                                                    data-bs-target="#collapseThree">
                                                                                    유의사항
                                                                                </button>
                                                                            </h2>
                                                                            <div id="collapseThree" class="accordion-collapse collapse show"
                                                                                aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                                                <div class="accordion-body category-scroll">
                                                                                    <ul class="category-list">
                                                                                    <li>
                                                                                        <p>요금제 변경일을 기준으로 1개월 내에는 <br>다른 요금제로 변경이 불가합니다.</p>
                                                                                    </li>                                              
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </section>
                                                </div>
                                        <!-- 약관동의 드랍다운 end -->
                                                        <div class="container">
                                                            <ul class="checkbox-details">
                                                                <li class="checkbox-list">
                                                                    <div class="form-check user-checkbox ps-0">
                                                                        <input class="checkbox_animated check-it" type="checkbox" value=""
                                                                            id="flexCheckDefault3">
                                                                        <label class="form-check-label mt-4" for="flexCheckDefault3">개인정보 취급 동의 <span
                                                                                class="fw-bolder">[필수]</span>
                                                                        </label>
                                                                    </div>
                                                                </li>
                                                            </ul>  
                                                            <ul>
                                                                <li class="checkbox-list mt-3">
                                                                    <div class="form-check user-checkbox ps-0">
                                                                        <input class="checkbox_animated check-it" type="checkbox" value=""
                                                                            id="flexCheckDefault1">
                                                                        <label class="form-check-label fw-bolder" for="flexCheckDefault1">위 안내사항을 확인하였습니다.</label>
                                                                    </div>
                                                                </li>     
                                                            </ul>
                                                        </div>
                                                        <div class="col-md-5 mx-auto">   
                                                            <div class="button login">
                                                                <button onclick="location.href='zyogeumje_modify.html';">
                                                                    <span>확인</span>
                                                                </button>
                                                            </div>     
                                                        </div>
                                                </div>     
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
<!-- 가입자 본인인증 모달창 start end -->

 <!-- 번호이동 모달창 start -->
    <div class="modal fade quick-view-modal" id="changeTelecom">
        <div class="modal-dialog modal-lg modal-dialog-centered col-12">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row gy-4">
                        <div class="col-12">
                            <div class="product-right">
                                <div class="size-detail">
                                <h2 class="mb-3 fw-bolder">이전 통신사 정보</h2>
										<ul class="radio-select">
										  <li>
										    <input type="radio" id="skt" name="skt" value="SKT" checked hidden> 
										    <label for="skt">SKT</label>
										  </li>
										  <li>
										    <input type="radio" id="kt" name="kt" value="KT" hidden>
										    <label for="kt">KT</label>
										  </li>
										  <li>
										    <input type="radio" id="lgu" name="previousCarrier" value="LGU+" hidden>
										    <label for="lgu">LGU+</label>
										  </li>
										</ul>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control mb-3" id="phoneNum" name="phoneNum" placeholder="휴대폰 번호 '-'없이 숫자만 입력" value="">
                                </div>
                                <div class="size-detail">
                                    <h2 class="mb-3 fw-bolder">가입자 정보</h2>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control mb-3" id="name" name="name" placeholder="이름" value="" >
                                    </div>
                                     <div class="row">
									    <div class="col-md-12">
									      <div class="d-flex align-items-center justify-content-center">
									        <input type="text" class="form-control me-3" id="rrnf" name="rrnf" placeholder="주민번호 앞자리">
									        <p class="me-3 fs-6 mt-2">-</p>
									        <input type="text" class="form-control" id="rrnr" name="rrnr" placeholder="주민번호 뒷자리">
									      </div>
									    </div>
									  </div>
									
                                    <div class="col-md-12">
                                        <div class=" d-flex">
                                        <input type="text" class="form-control mt-2 " id="address1" name="address1" placeholder="주소입력" > 
                                        <button type="button" class="btn btn-solid-default btn-sm mt-2 " onclick="execution_daum_address()" id="findAddress"style="height:50%; text-align:center;">주소찾기</button>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control mt-2" id="address2" name="address2" placeholder="도로명주소">
                                    </div>
                                    <div class="col-md-12">
                                    	<input type="text" class="form-control mt-2" id="address3" name="address3" placeholder="상세주소">
                                    </div>
                                </div>
                            <div class="col-12">
                                <div class="product-right">
                                    <div class="size-detail">
                                        <h2 class="mb-3 fw-bolder">할인 정보</h2>
                                         <!-- 0: 공시지원금X 1: 선택약정 12개월, 2: 선택약정 24개월 -->
                                     	<div class="mx-auto" style="height: 100%; width: 100%; border-radius: 5px; border:1px solid lightgray">
                                            <div class="nav-link" style="color:black; white-space: nowrap;">
                                                <h6 class="text-start mb-2">선택약정할인 (통신요금 25% 할인)</h6>
                                                    <div class="row" >
                                                        <div class="form-check custome-radio-box">
                                                            <input class="form-check-input mx-2" type="radio" name="disKind" id="discount2" value="2">
                                                            <label class="form-check-label d-flex" for="paypal">24개월 할인  
                                                                <span class="justify-content-end" style="margin-left:150px;">총</span> <span class="fs-4" id="dis2" style="margin-top:-10px;"></span> <span>원</span> </label>
                                                        </div> 
                                                        <div class="form-check custome-radio-box">
                                                            <input class="form-check-input mx-2" type="radio" name="disKind" id="discount1" value="1">
                                                            <label class="form-check-label d-flex" for="paypal">12개월 할인 
                                                                <span class="justify-content-end " style="margin-left:153px;">총</span> <span class="fs-4" id="dis1" style="margin-top:-10px; "></span> <span>원</span> </label> 
                                                        </div> 
                                                    </div>   
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    
                                    <div class="category-option mt-3">
                                    <div class="accordion category-name" id="accordionExample"> 
                                        <div class="accordion-item category-rating">
                                            <h2 class="accordion-header" id="headingThree">
                                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree">
                                                    유의사항
                                                </button>
                                            </h2>
                                            <div id="collapseThree" class="accordion-collapse collapse show" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                <div class="accordion-body category-scroll">
                                                    <ul class="category-list">
                                                        <li>
                                                            <p>요금제 변경일을 기준으로 1개월 내에는 <br>다른 요금제로 변경이 불가합니다.</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="checkbox-list mt-3 ">
                                            <div class="form-check user-checkbox ps-0 ">
                                                <input class="checkbox_animated check-it" type="checkbox" value="" id="flexCheckDefault1">
                                                <label class="form-check-label fw-bolder" for="flexCheckDefault1">위 안내사항을 확인하였습니다.</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-btns ">
                                        <button onclick="location.href='zsuccess_bunhoedong.html';" type="button" class="btn btn-solid-default btn-lg col-md-12"
                                            data-bs-dismiss="modal">가입하기</button>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- 번호이동 모달창 end -->
 <!-- 요금 삭제 모달창 start -->
 <div class="modal fade payment-modal" id="yogeumdel">
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
<!-- Add number Modal End -->

<!-- Recommend product 1 -->
<section class="left-sidebar-section masonary-blog-section">
    <div class="container">
            <div class="title title1 title-effect mb-4 title-left">
                <h2 class="fs-4">추천상품</h2>
            </div>
                <div class="col-lg-12 col-md-12 order-md-1 ratio_square">
                    <div class="row mb-3 justify-content-center">
                        <div class="col-2">
                            <div class="masonary-blog box-shadow">
                                <div class="card-body card-body-width">
                                    <a href="blog-details.html">
                                        <h2 class="card-title">5G 슬림</h2>
                                    </a>
                                    <h3 class="masonary-name">월 55,000원</h3>
                                    <p class="font-light">데이터 8GB 가성비로 이용하는 5G
                                    </p>    
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="masonary-blog box-shadow">
                                <div class="card-body card-body-width">
                                    <a href="blog-details.html">
                                        <h2 class="card-title">5G 슬림</h2>
                                    </a>
                                    <h3 class="masonary-name">월 55,000원</h3>
                                    <p class="font-light">데이터 8GB 가성비로 이용하는 5G
                                    </p>    
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="masonary-blog box-shadow">
                                <div class="card-body card-body-width">
                                    <a href="blog-details.html">
                                        <h2 class="card-title">5G 슬림</h2>
                                    </a>
                                    <h3 class="masonary-name">월 55,000원</h3>
                                    <p class="font-light">데이터 8GB 가성비로 이용하는 5G
                                    </p>    
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="masonary-blog box-shadow">
                                <div class="card-body card-body-width">
                                    <a href="blog-details.html">
                                        <h2 class="card-title">5G 슬림</h2>
                                    </a>
                                    <h3 class="masonary-name">월 55,000원</h3>
                                    <p class="font-light">데이터 8GB 가성비로 이용하는 5G
                                    </p>    
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="masonary-blog box-shadow">
                                <div class="card-body card-body-width">
                                    <a href="blog-details.html">
                                        <h2 class="card-title">5G 슬림</h2>
                                    </a>
                                    <h3 class="masonary-name">월 55,000원</h3>
                                    <p class="font-light">데이터 8GB 가성비로 이용하는 5G
                                    </p>    
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
   
</section>
<!-- recommend product 1 end -->
<c:import url="../temp/footer.jsp"></c:import>
	<!-- 다음 주소 찾기 API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	/* 다음 주소 연동 */
	function execution_daum_address(){
		
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            
	            	console.log(addr);
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 주소변수 문자열과 참고항목 문자열 합치기
	      			addr += extraAddr;
	            
	            } else {
	                addr += ' ';
	            }
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            $('#address1').val(data.zonecode);
	            //$("[name=memberAddr1]").val(data.zonecode);	// 대체가능
	            $('#address2').val(addr);
	            //$("[name=memberAddr2]").val(addr);			// 대체가능
	            // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
	            $('#address3').attr("readonly",false);
	            $('#address3').focus(); 
	        }
	    }).open();   
	}
	</script>
	<script>
// 모달이 열릴 때 실행되는 함수
  function handleModalShown() {
    const planPrice = 55000;
    const dis1 = planPrice * 12 * 0.25;
    const dis2 = planPrice * 24 * 0.25;
    const dis1Element = document.getElementById('dis1');
    const dis2Element = document.getElementById('dis2');
    dis1Element.textContent = -dis1;
    dis2Element.textContent = -dis2;
  }

  // 모달의 "shown.bs.modal" 이벤트에 이벤트 리스너 추가
  const changeTelecomModal = document.getElementById('changeTelecom');
  changeTelecomModal.addEventListener('shown.bs.modal', handleModalShown);

  // changeTelecom 버튼에 이벤트 리스너 추가
  const changeTelecomBtn = document.getElementById('changeTelecomBtn');
  changeTelecomBtn.addEventListener('click', () => {
    // 모달을 열기 전에 필요한 동작을 수행할 수 있습니다
  });
</script>
</body>

</html>
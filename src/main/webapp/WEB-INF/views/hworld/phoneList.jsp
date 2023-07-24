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

                                   <div class="mx-2 col-2">
									    <li class="onclick-title">
									        <h6 class="text-center">제조사</h6>
									        <ul class="onclick-content">
									            <li>
									                <div class="form-check ps-0 custome-form-check">
									                    <input class="checkbox_animated check-it" type="checkbox" id="appleCheck" name="brandCode" value="A">
									                    <label class="form-check-label" for="appleCheck">Apple</label>
									                </div>
									            </li>
									            <li>
									                <div class="form-check ps-0 custome-form-check">
									                    <input class="checkbox_animated check-it" type="checkbox" id="samsungCheck" name="brandCode" value="S">
									                    <label class="form-check-label" for="samsungCheck">삼성</label>
									                </div>
									            </li>
									        </ul>
									    </li>
									</div>

                                	<div class="mx-2 col-2">
	                                    <li class="onclick-title text-center">                                    
	                                        <a href="javascript:void(0)" style="color: black;" data-bs-toggle="modal" id="cartEffect" data-bs-target="#palnTB"> 
	                                            요금제
	                                        </a>
	                                    </li>
                                	</div>
                                	<div class="mx-2 col-2">
                                    	<li class="onclick-title">
                                        	<h6 class="text-center">할인방법</h6>
	                                        <ul class="onclick-content">
	                                            <li>
	                                                <div class="form-check ps-0 custome-form-check">
	                                                    <input class="checkbox_animated check-it" type="checkbox"
	                                                        id="disKind1" name="disKind" value="1">
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
	                                                        id="disKind3" name="disKind" value="0">
	                                                    <label class="form-check-label" for="disKind">공시지원금 (24개월)</label>
	                                                </div>
	                                            </li>
                                           
                                        	</ul>
                                    	</li>
                                	</div>

                              </ul>
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
	                                                class="bg-img"" alt="">
	                                        </a>
	                                    </div>
	                                </div>
  
				                   <div class="product-details">
			                           <div class="rating-details">
			                                     <span class="font-light grid-content">${direct.slicedCode}
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
		                               
		                                <h3 class="theme-color d-flex" id="renewPrice${direct.slicedCode}">
						                    ${direct.initPrice}
						                    
						                </h3>
		                            </div>
                        		 </div>
		                       </div>
		                   </div>
                   </c:forEach>
                  </div>
                        
                    <!-- Prodcut setion -->
                    <div class="">
                        <nav class="page-section d-flex justify-content-end" style="position: relative;">
                            <ul class="pagination mx-auto">
                                <li class="page-item">
                                    <a class="page-link" href="javascript:void(0)" aria-label="Previous">
                                        <span aria-hidden="true">
                                            <i class="fas fa-chevron-left"></i>
                                        </span>
                                    </a>
                                </li>
                                <li class="page-item active">
                                    <a class="page-link" href="javascript:void(0)">1</a>
                                </li>

                                <li class="page-item">
                                    <a class="page-link" aria-label="Next">
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
        </div>
    </section>
    <!-- Shop Section end -->

   

<!-- 요금제 모달창 start -->
<div class="modal fade quick-view-modal" id="palnTB">
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
                                                <button onclick="" type="button" class="btn btn-solid-default btn-lg col-md-12"
                                                    data-bs-dismiss="modal">선택하기</button>
                                            </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

</div>
<!-- 요금제 모달창 end -->
 <!-- tap to top Section Start -->
<!--    <div class="tap-to-top">
        <a href="#home">
            <i class="fas fa-chevron-up"></i>
        </a>
    </div>  -->
    <!-- tap to top Section End -->
 <c:import url="../temp/footer.jsp"></c:import>

 

 <!-- Add To Home js -->
    <script src="/assets/js/pwa.js"></script>

    <!-- Price Filter js -->
    <script src="/assets/js/price-filter.js"></script>

    <!--Plugin JavaScript file-->
    <script src="/assets/js/ion.rangeSlider.min.js"></script> 

    <!-- Filter Hide and show Js -->
    <script src="/assets/js/filter.js"></script>

    <!-- Notify js-->
    <script src="/assets/js/bootstrap/bootstrap-notify.min.js"></script>

  
    
    
 <script>
$(document).ready(function() {
    const prices = document.querySelectorAll('[id^="renewPrice"]');
    for (var i = 0; i < prices.length; i++) {
        const price = parseInt(prices[i].innerHTML);
        const renewPrice = price.toLocaleString();
        prices[i].innerHTML =renewPrice + '<span class="price-unit" style="text-decoration:none; color:black;">원</span>';
       	
    }
});
</script>
<script>
    // 체크박스 변경 이벤트 리스너 등록
    const checkboxes = document.querySelectorAll('input[name="brandCode"]');
    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function() {
            this.form.submit();
        });
    });
</script>

    
</body>

</html>
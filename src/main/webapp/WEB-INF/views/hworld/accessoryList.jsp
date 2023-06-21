<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<c:import url="../temp/style.jsp"></c:import>
    <title>Shop Right Sidebar</title>
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
                    <h3>액세서리</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Accessory</li>
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
                <div class="col-lg-9 col-12 ratio_30">
                    <div class="row g-4">
                        
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
                                                    <a class="dropdown-item" href="accessoryList">최신순</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="accessoryList?sortType=priceLow">가격 낮은 순</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="accessoryList?sortType=priceHigh">가격 높은 순</a>
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
                                        <li class="grid-btn active d-lg-inline-block d-none">
                                            <a href="javascript:void(0)">
                                                <img src="/assets/svg/grid.svg" class="img-fluid blur-up lazyload"
                                                    alt="">
                                            </a>
                                        </li>                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- label and featured section -->

                    <!-- Prodcut setion -->
                    <div
                        class="row g-sm-4 g-3 row-cols-lg-4 row-cols-md-3 row-cols-2 mt-1 custom-gy-5 product-style-2 ratio_asos product-list-section">
 	                   <c:forEach items="${list}" var="direct">
                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="./accessoryDetail?slicedCode=${direct.slicedCode}">
                                            <img src="/assets/images/electronics/product/${direct.slicedCode}thumb.jpg"
                                                class="img-fluid" alt="">
                                        </a>
                                    </div>
                                
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">${direct.slicedCode}</span>
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
		                               <h5 class="ms-0"> <a href="./accessoryDetail?slicedCode=${direct.slicedCode}" class="font-default">
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
                        <!-- Prodcut setion -->
                    </div>

                    <nav class="page-section d-flex justify-content-end">
                        <ul class="pagination mx-auto">
                            <li class="page-item">
                                <a class="page-link" href="javascript:void(0)" aria-label="Previous">
                                    <span aria-hidden="true">
                                        <i class="fas fa-chevron-left"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="page-item ">
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
                        <c:if test="${memberVO.adminCheck ==0}">
                        <a href="accessoryAdd" class="btn btn-solid-default m-1" style="position: absolute">상품 등록</a>
                        </c:if>
                    </nav>
                </div>

                <div class="col-lg-3 col-md-4">
            <!-- 최근 본 상품 section start -->
        <!-- Slider section start -->
                <div class="most-popular" style="position: sticky; right: inherit; top: 40%; ">
                    <div class="title title-2 text-lg-start">
                        <h3>최근 본 상품</h3>
                    </div>

                    <div>
                        <div class="row g-3">
                        <c:forEach items="${recentlyViewedProducts}" var="direct">
                        
                            <div class="col-12">
                                <div class="product-image">
	                                <a href="./accessoryDetail?slicedCode=${direct.slicedCode}">
                                        <img src="/assets/images/electronics/product/${direct.slicedCode}thumb.jpg"
                                            class="lazyload" alt="">
                                    </a>
                                    <div class="product-details">
                                        <h6 class="font-light">${direct.slicedCode}</h6>
                                        <a href="./accessoryDetail?slicedCode=${direct.slicedCode}" class="">
                                            <h3>${direct.directName}</h3>
                                        </a>
                                        <h4> <span
                                                class="theme-color" id="renewPrice">${direct.directPrice} </span>
                                        </h4>
                                    </div>
                                </div>
                            </div>
						</c:forEach>
                           
                        </div>
                    </div>
                </div>
                <!-- Slider Section End -->

    <!-- 최근 본 상품 section end -->
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section end -->


    
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
        prices[i].innerHTML =renewPrice + '<span class="price-unit mt-1" style="text-decoration:none; color:black;">원</span>';
       	
    }
});
</script>
 
</body>

</html>
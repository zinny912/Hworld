<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>Shop Top Filter</title>
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
    <!-- mobile fix menu start -->
    <div class="mobile-menu d-sm-none">
        <ul>
            <li>
                <a href="index.html">
                    <i data-feather="home"></i>
                    <span>Home</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)" class="toggle-category">
                    <i data-feather="align-justify"></i>
                    <span>Category</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)">
                    <i data-feather="shopping-bag"></i>
                    <span>Cart</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)">
                    <i data-feather="heart"></i>
                    <span>Wishlist</span>
                </a>
            </li>
            <li>
                <a href="user-dashboard.html">
                    <i data-feather="user"></i>
                    <span>Account</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- mobile fix menu end -->

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
                                    <i data-feather="align-left" class="img-fluid blur-up lazyloaded"></i>
                                    <h5>latest filter</h5>
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
                                                        <input class="checkbox_animated check-it" type="checkbox"
                                                            id="flexCheckDefault">
                                                        <label class="form-check-label" for="flexCheckDefault">Apple</label>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="form-check ps-0 custome-form-check">
                                                        <input class="checkbox_animated check-it" type="checkbox"
                                                            id="flexCheckDefault">
                                                        <label class="form-check-label" for="flexCheckDefault">삼성</label>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                    </div>
                                <div class="mx-2 col-2">
                                    <li class="onclick-title text-center">                                    
                                        <a href="javascript:void(0)" style="color: black;" data-bs-toggle="modal" id="cartEffect" data-bs-target="#quick-view2"> 
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
                                                        id="flexCheckDefault19">
                                                    <label class="form-check-label" for="flexCheckDefault19">선택약정 (12개월)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="form-check ps-0 custome-form-check">
                                                    <input class="checkbox_animated check-it" type="checkbox"
                                                        id="flexCheckDefault19">
                                                    <label class="form-check-label" for="flexCheckDefault19">선택약정 (24개월)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="form-check ps-0 custome-form-check">
                                                    <input class="checkbox_animated check-it" type="checkbox"
                                                        id="flexCheckDefault19">
                                                    <label class="form-check-label" for="flexCheckDefault19">공시지원금 (24개월)</label>
                                                </div>
                                            </li>
                                           
                                        </ul>
                                    </li>
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
                                                    <a class="dropdown-item" href="javascript:void(0)">최신순</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="javascript:void(0)">낮은 가격순</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="javascript:void(0)">높은 가격순</a>
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
                    <!-- label and featured section -->

                    <!-- Prodcut setion -->
                    <div
                        class="row g-sm-4 g-3 row-cols-xl-5 row-cols-lg-4 row-cols-md-3 row-cols-2 gx-sm-4 gx-3 mt-1 custom-gy-5 product-style-2 ratio_asos product-list-section">
                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="상품상세페이지.html">
                                            <img src="/assets/images/fashion/product/front/1.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">B&Y Jacket</span>
                                        <ul class="rating mt-0">
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
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Slim Fit Plastic Coat</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Regular Fit</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$78.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/2.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">Jacket</span>
                                        <ul class="rating mt-0">
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
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Blue Leather Jacket</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Jacket</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$60.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/3.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">Coat</span>
                                        <ul class="rating mt-0">
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
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Military Ball Night Dress</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Coat</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$85.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/4.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">Jacket</span>
                                        <ul class="rating mt-0">
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
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                            <li>
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Slim Fit Plastic Coat</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Jacket</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$69.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/5.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">Full Jacket</span>
                                        <ul class="rating mt-0">
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
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Full Jacket Ladies</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Full Jacket</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$40.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/6.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">T-Shirt</span>
                                        <ul class="rating mt-0">
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
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                            <li>
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Full Slive Black T-Shirt</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">T-Shirt</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$69.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/7.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">Fashion</span>
                                        <ul class="rating mt-0">
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
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Latest Fashion Cloth</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Fashion</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit.
                                                Sit, deserunt?
                                                Asperiores aliquam voluptatum culpa aliquid ab ducimus eaque illum,
                                                quibusdam reiciendis id ad consectetur quis, animi qui, minus quidem
                                                eveniet! Dolorum magnam numquam, asperiores accusantium architecto
                                                placeat
                                                quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$54.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/8.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">Jacket</span>
                                        <ul class="rating mt-0">
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
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Full Black Slive Jacket</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Jacket</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$99.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/1.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">B&Y Jacket</span>
                                        <ul class="rating mt-0">
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
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Slim Fit Plastic Coat</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Regular Fit</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$78.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/2.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">Jacket</span>
                                        <ul class="rating mt-0">
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
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Blue Leather Jacket</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Jacket</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$60.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/3.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">Coat</span>
                                        <ul class="rating mt-0">
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
                                            <li>
                                                <i class="fas fa-star"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Military Ball Night Dress</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Coat</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$85.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/4.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>                                    
                                </div>
                                <div class="product-details">
                                    <div class="rating-details">
                                        <span class="font-light grid-content">Jacket</span>
                                        <ul class="rating mt-0">
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
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                            <li>
                                                <i class="fas fa-star theme-color"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="main-price">
                                        <a href="product-left-sidebar.html" class="font-default">
                                            <h5 class="ms-0">Slim Fit Plastic Coat</h5>
                                        </a>
                                        <div class="listing-content">
                                            <span class="font-light">Jacket</span>
                                            <p class="font-light">Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
                                        </div>
                                        <h3 class="theme-color">$69.00</h3>
                                        <button onclick="location.href = 'cart.html';" class="btn listing-content">Add
                                            To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                            <a href="directAdd" class="btn btn-solid-default m-1" style="position: absolute">상품 등록</a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section end -->

<!-- 요금제 모달창 start -->
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

    <!-- Quick view modal start -->
    <div class="modal fade quick-view-modal" id="quick-view">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row gy-4">
                        <div class="col-lg-6">
                            <div class="quick-view-image">
                                <div class="quick-view-slider">
                                    <div>
                                        <img src="/assets/images/fashion/product/front/4.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/fashion/product/front/5.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/fashion/product/front/6.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/fashion/product/front/7.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                </div>
                                <div class="quick-nav">
                                    <div>
                                        <img src="/assets/images/fashion/product/front/4.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/fashion/product/front/5.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/fashion/product/front/6.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/fashion/product/front/7.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-right">
                                <h2 class="mb-2">Men's Hoodie t-shirt</h2>
                                <ul class="rating mt-1">
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
                                    <li class="font-light">(In stock)</li>
                                </ul>
                                <div class="price mt-3">
                                    <h3>$20.00</h3>
                                </div>
                                <div class="color-types">
                                    <h4>colors</h4>
                                    <ul class="color-variant mb-0">
                                        <li class="bg-half-light selected"></li>
                                        <li class="bg-light1"></li>
                                        <li class="bg-blue1"></li>
                                        <li class="bg-black1"></li>
                                    </ul>
                                </div>
                                <div class="size-detail">
                                    <h4>size</h4>
                                    <ul class="">
                                        <li class="selected">S</li>
                                        <li>M</li>
                                        <li>L</li>
                                        <li>XL</li>
                                    </ul>
                                </div>
                                <div class="product-details">
                                    <h4>product details</h4>
                                    <ul>
                                        <li>
                                            <span class="font-light">Style :</span> Hoodie
                                        </li>
                                        <li>
                                            <span class="font-light">Catgory :</span> T-shirt
                                        </li>
                                        <li>
                                            <span class="font-light">Tags:</span> summer, organic
                                        </li>
                                    </ul>
                                </div>
                                <div class="product-btns">
                                    <button type="button" class="btn btn-solid-default btn-sm"
                                        data-bs-dismiss="modal">Add to cart</button>
                                    <button type="button" class="btn btn-solid-default btn-sm"
                                        data-bs-dismiss="modal">View details</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick view modal end -->

    <!-- Cart Successful Start -->
    <div class="modal fade cart-modal" id="addtocart" tabindex="-1" role="dialog" aria-label="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content ">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <div class="modal-body">
                    <div class="modal-contain">
                        <div>
                            <div class="modal-messages">
                                <i class="fas fa-check"></i> 3-stripes full-zip hoodie successfully added to
                                you cart.
                            </div>
                            <div class="modal-product">
                                <div class="modal-contain-img">
                                    <img src="/assets/images/fashion/instagram/4.jpg" class="img-fluid blur-up lazyload"
                                        alt="">
                                </div>
                                <div class="modal-contain-details">
                                    <h4>Premier Cropped Skinny Jean</h4>
                                    <p class="font-light my-2">Yellow, Qty : 3</p>
                                    <div class="product-total">
                                        <h5>TOTAL : <span>$1,140.00</span></h5>
                                    </div>
                                    <div class="shop-cart-button mt-3">
                                        <a href="shop-left-sidebar.html"
                                            class="btn default-light-theme conti-button default-theme default-theme-2 rounded">CONTINUE
                                            SHOPPING</a>
                                        <a href="cart.html"
                                            class="btn default-light-theme conti-button default-theme default-theme-2 rounded">VIEW
                                            CART</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="ratio_asos mt-4">
                        <div class="container">
                            <div class="row m-0">
                                <div class="col-sm-12 p-0">
                                    <div
                                        class="product-wrapper product-style-2 slide-4 p-0 light-arrow bottom-space spacing-slider">
                                        <div>
                                            <div class="product-box">
                                                <div class="img-wrapper">
                                                    <div class="front">
                                                        <a href="product-left-sidebar.html">
                                                            <img src="/assets/images/fashion/product/front/1.jpg"
                                                                class="bg-img blur-up lazyload" alt="">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-details text-center">
                                                    <div class="rating-details d-block text-center">
                                                        <span class="font-light grid-content">B&Y Jacket</span>
                                                    </div>
                                                    <div class="main-price mt-0 d-block text-center">
                                                        <h3 class="theme-color">$78.00</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="product-box">
                                                <div class="img-wrapper">
                                                    <div class="front">
                                                        <a href="product-left-sidebar.html">
                                                            <img src="/assets/images/fashion/product/front/2.jpg"
                                                                class="bg-img blur-up lazyload" alt="">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-details text-center">
                                                    <div class="rating-details d-block text-center">
                                                        <span class="font-light grid-content">B&Y Jacket</span>
                                                    </div>
                                                    <div class="main-price mt-0 d-block text-center">
                                                        <h3 class="theme-color">$78.00</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="product-box">
                                                <div class="img-wrapper">
                                                    <div class="front">
                                                        <a href="product-left-sidebar.html">
                                                            <img src="/assets/images/fashion/product/front/3.jpg"
                                                                class="bg-img blur-up lazyload" alt="">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-details text-center">
                                                    <div class="rating-details d-block text-center">
                                                        <span class="font-light grid-content">B&Y Jacket</span>
                                                    </div>
                                                    <div class="main-price mt-0 d-block text-center">
                                                        <h3 class="theme-color">$78.00</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="product-box">
                                                <div class="img-wrapper">
                                                    <div class="front">
                                                        <a href="product-left-sidebar.html">
                                                            <img src="/assets/images/fashion/product/front/4.jpg"
                                                                class="bg-img blur-up lazyload" alt="">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-details text-center">
                                                    <div class="rating-details d-block text-center">
                                                        <span class="font-light grid-content">B&Y Jacket</span>
                                                    </div>
                                                    <div class="main-price mt-0 d-block text-center">
                                                        <h3 class="theme-color">$78.00</h3>
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
    </div>
    <!-- Cart Successful End -->
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
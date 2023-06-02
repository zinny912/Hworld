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
                <a href="cart.html">
                    <i data-feather="shopping-bag"></i>
                    <span>Cart</span>
                </a>
            </li>
            <li>
                <a href="wishlist.html">
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
                        <!-- filter button -->
                        <div class="filter-button">
                            <button class="danger-button danger-center btn btn-sm filter-btn"><i
                                    data-feather="align-left"></i> Filter</button>
                        </div>
                        <!-- filter button -->
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
                                                    <a class="dropdown-item" href="javascript:void(0)">가격 높은 순</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="javascript:void(0)">가격 낮은 순</a>
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
                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/front/1.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/1.jpg"
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
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/2.jpg"
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
                                            <img src="/assets/images/fashion/product/front/2.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/2.jpg"
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
                                            <img src="/assets/images/fashion/product/front/4.jpg"
                                                class="bg-img blur-up lazyload" alt="">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/4.jpg"
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
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/5.jpg"
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
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/6.jpg"
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
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/7.jpg"
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
                                                elit. Sit, deserunt? Asperiores aliquam voluptatum culpa aliquid ab
                                                ducimus eaque illum, quibusdam reiciendis id ad consectetur quis, animi
                                                qui, minus quidem eveniet! Dolorum magnam numquam, asperiores
                                                accusantium architecto placeat quam officia, tempore repellendus.</p>
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
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/8.jpg"
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
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/1.jpg"
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
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/2.jpg"
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
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/3.jpg"
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
                                    <div class="back">
                                        <a href="product-left-sidebar.html">
                                            <img src="/assets/images/fashion/product/back/4.jpg"
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

                <div class="col-lg-3 col-md-4">
            <!-- 최근 본 상품 section start -->
        <!-- Slider section start -->
                <div class="most-popular" style="position: sticky; right: inherit; top: 40%; ">
                    <div class="title title-2 text-lg-start">
                        <h3>최근 본 상품</h3>
                    </div>

                    <div>
                        <div class="row g-3">
                            <div class="col-12">
                                <div class="product-image">
                                    <a href="javascript:void(0)">
                                        <img src="/assets/images/fashion/product/front/1.jpg"
                                            class="blur-up lazyload" alt="">
                                    </a>
                                    <div class="product-details">
                                        <h6 class="font-light">Regular Fit</h6>
                                        <a href="javascript:void(0)" class="">
                                            <h3>Slim Fit Plastic Coat</h3>
                                        </a>
                                        <h4 class="font-light mt-1"><del>$49.00</del> <span
                                                class="theme-color">$35.50</span>
                                        </h4>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="product-image">
                                    <a href="javascript:void(0)">
                                        <img src="/assets/images/fashion/product/front/2.jpg"
                                            class="blur-up lazyload" alt="">
                                    </a>
                                    <div class="product-details">
                                        <h6 class="font-light">Regular Fit</h6>
                                        <a href="javascript:void(0)" class="">
                                            <h3>Slim Fit Plastic Coat</h3>
                                        </a>
                                        <h4 class="font-light mt-1"><del>$49.00</del> <span
                                                class="theme-color">$35.50</span>
                                        </h4>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="product-image">
                                    <a href="javascript:void(0)">
                                        <img src="/assets/images/fashion/product/front/3.jpg"
                                            class="blur-up lazyload" alt="">
                                    </a>
                                    <div class="product-details">
                                        <h6 class="font-light">Regular Fit</h6>
                                        <a href="javascript:void(0)" class="">
                                            <h3>Slim Fit Plastic Coat</h3>
                                        </a>
                                        <h4 class="font-light mt-1"><del>$49.00</del> <span
                                                class="theme-color">$35.50</span>
                                        </h4>
                                    </div>
                                </div>
                            </div>
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
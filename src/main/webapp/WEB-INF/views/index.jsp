<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="./temp/style.jsp"></c:import>
    <link id="color-link" rel="stylesheet" type="text/css" href="/assets/css/demo1.css">
    <title>H WORLD</title>    
    <style>
      
        * {
        box-sizing: border-box;
        }

        .input-file-container {
            width: 300px;
        }

        .input-file {
            width: 300px;
            height: 40px;
            border: 1px solid #e22454;
            display: flex;
            flex-wrap: wrap;
            position: relative;
            border-radius: 8px;
            overflow: hidden;
        }

        #avatarInput {
            position: absolute;
            width: 100%;
            height: 100%;
            left: 0;
            top: 0;
            opacity: 0;
        }

        .input-file__name {
            width: 83%;
            display: flex;
            align-items: center;
            font-size: 1.2em;
            padding: 0 15px ;
            margin: 0;
            color: #e22454;
        }

        .input-file__button {
            width: 17%;
            font-size: 1.2em;
            padding: 0;
            border: none;
            background-color: #e22454;
            color: #ffffff;
        }

        .image-preview { 
            width: 70%;
            display: block;
            margin: 20px auto 20px;
            border-radius: 8px;
        }
    </style>

</head>

<body class="theme-color2 light ltr">
<c:import url="./temp/header.jsp"></c:import>
   

    <!-- home slider start -->
  
    <section>
        <div class="container-fluid">
            <div class="row g-4">
                <div class="col-12 px-0">
                    <div class="header-image-contain">
                       
                        <div class="home-section">
                            <div class="container-fluid px-0">
                                <div class="slick-1 classic-arrow">
                                    <div>
                                        <div class="home-slider">
                                            <img src="assets/images/electronics/slider/1.jpg"
                                                class="bg-img" alt="" style="display: none;">
                                            <div class="home-wrap row">
                                                <div class="col-lg-4 col-md-6 col-sm-9 left-content">
                                                    <div>
                                                        <div class="offer-wrap">
                                                            <h4 class="theme-color mb-2">신상품</h4>
                                                            <h6>05/31 판매예정</h6>
                                                        </div>
                                                        <div class="home-content">
                                                            <h1>apple</h1>
                                                            <h1 class="mb-2">iPhone 14</h1>
                                                            <h2 class="mb-4 d-sm-block d-none">
                                                                놀라움 한가득.
                                                            </h2>
                                                            <h3 class="mb-3"><span
                                                                    class="theme-color"></span> <span
                                                                    class="text-decoration-line-through"></span>
                                                            </h3>
                                                            <p class="mb-0 d-sm-block d-none">
                                                                
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3 offset-lg-5 right-content d-lg-flex d-none">
                                                    <div>
                                                        <h4 class="theme-color mb-2">
                                                            사전 예약 시작</h4>
                                                        <h6 class="mb-4">오직 H world에서만.
                                                        </h6>
                                                        <p class="mb-0">
                                                            Ceramic Shield를 갖춘 15.4cm 크기의 견고한 디자인. 
                                                            여기에 생활 방수 및 방진 기능까지
                                                            <br>
                                                            
                                                            최대 20시간의 동영상 재생 시간을 자랑하는 놀라운 배터리 성능으로 온종일 든든하게
                                                            <br>
                                                            <br>

                                                            iPhone 13 Pro에 탑재된 것과 동일한, 놀라운 속도의 A15 Bionic 칩
                                                        </p>
                                                        <div class="product-img">
                                                            <ul>
                                                                <li>
                                                                    <a href="shop-left-sidebar.html"
                                                                        data-source="assets/images/electronics/slider/1.jpg">
                                                                        <img src="assets/images/electronics/slider/2.jpg"
                                                                            class="img-fluid" alt="">
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="shop-left-sidebar.html"
                                                                        data-source="assets/images/electronics/slider/1.jpg">
                                                                        <img src="assets/images/electronics/slider/3.jpg"
                                                                            class="img-fluid" alt="">
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="group-btn">
                                                <button onclick="location.href = 'shop-left-sidebar.html';"
                                                    type="button" class="btn btn-solid-default">제품 구매하기</button>
                                            </div>
                                            
                                        </div>
                                            <!-- <div class="mt-1 d-flex justify-content-end">
                                                <a href="javascript:void(0)" data-bs-toggle="modal"
                                                data-bs-target="#quick-view">
                                                    <button class="btn rounded-3 btn-solid-default">
                                                        수정
                                                    </button>
                                                </a>
                                            </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- home slider end -->

    <!-- service section start -->
    <section class="service-section service-style-2 section-b-space">
        <div class="container">
            <div class="row g-4 g-sm-3">
                <div class="col-xl-3 col-sm-6">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <svg>
                                <use xlink:href="assets/svg/icons.svg#customer"></use>
                            </svg>
                        </div>
                        <div class="service-content">
                            <h3 class="mb-2">고객 지원 서비스</h3>
                            <span class="font-light">도움이 필요하시면 언제든지 문의해 주세요.</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <svg>
                                <use xlink:href="assets/svg/icons.svg#shop"></use>
                            </svg>
                        </div>
                        <div class="service-content">
                            <h3 class="mb-2">무료 배송</h3>
                            <span class="font-light">언제 어디서나 무료 배송됩니다.</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <svg>
                                <use xlink:href="assets/svg/icons.svg#secure-payment"></use>
                            </svg>
                        </div>
                        <div class="service-content">
                            <h3 class="mb-2">보안 결제</h3>
                            <span class="font-light">철저한 보안으로 간편한 결제</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <svg>
                                <use xlink:href="assets/svg/icons.svg#return"></use>
                            </svg>
                        </div>
                        <div class="service-content">
                            <h3 class="mb-2">무료 환불</h3>
                            <span class="font-light">30일 이내 언제든 무료 환불</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- service section end -->


    <!-- Product Section Start -->
    <section>
        <div class="container">
            <div class="row gy-lg-0 gy-5 mb-5">
                <div class="col-lg-8">
                    <div class="title title-2 text-center">
                        <h2>스토어</h2>
                        <h5>좋아하는 제품을 구입하는 가장 좋은 방법</h5>
                    </div>

                    <div class="product-wrapper slide-three ratio_asos">
                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <a href="product-left-sidebar.html">
                                        <img src="assets/images/flower/popular/1.jpg"
                                            class="img-fluid bg-img blur-up lazyload" alt="">
                                    </a>
                                    <div class="label-block">
                                        <span class="label label-theme">New</span>
                                    </div>
                                
                                </div>
                                <div class="product-details text-center">
                                    <h3 class="theme-color">
                                        $49.00
                                    </h3>
                                    <a href="product-left-sidebar.html" class="font-default">
                                        <h5>Beautiful and Fresh Bookey</h5>
                                    </a>
                                    <ul class="rating">
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
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <a href="product-left-sidebar.html">
                                        <img src="assets/images/flower/popular/2.jpg"
                                            class="img-fluid bg-img blur-up lazyload" alt="">
                                    </a>
                                    <div class="label-block">
                                        <span class="label label-theme">New</span>
                                    </div>
                                
                                </div>
                                <div class="product-details text-center">
                                    <h3 class="theme-color">
                                        $49.00
                                    </h3>
                                    <a href="product-left-sidebar.html" class="font-default">
                                        <h5>Beautiful and Fresh Bookey</h5>
                                    </a>
                                    <ul class="rating">
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
                            </div>
                        </div>

                        <div>
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <a href="product-left-sidebar.html">
                                        <img src="assets/images/flower/popular/3.jpg"
                                            class="img-fluid bg-img blur-up lazyload" alt="">
                                    </a>
                                    <div class="label-block">
                                        <span class="label label-theme">New</span>
                                    </div>
                                    
                                </div>
                                <div class="product-details text-center">
                                    <h3 class="theme-color">
                                        $49.00
                                    </h3>
                                    <a href="product-left-sidebar.html" class="font-default">
                                        <h5>Beautiful and Fresh Bookey</h5>
                                    </a>
                                    <ul class="rating">
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
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="title title-2 text-lg-start text-md-center">
                        <h2>액세서리</h2>
                        <h5>완벽하게 페어링되는 필수품
                        </h5>
                    </div>

                        <div>
                            <div class="row g-3">
                                <div class="col-lg-12 col-md-6 col-12">
                                    <div class="product-image">
                                        <a href="product-left-sidebar.html">
                                            <img src="assets/images/flower/product/1.jpg" class="blur-up lazyload"
                                                alt="">
                                        </a>
                                        <div class="product-details">
                                            <h6 class="font-light">apple</h6>
                                            <a href="product-left-sidebar.html" class="">
                                                <h3>airpods</h3>
                                            </a>
                                            <h4 class="theme-color mt-1">$49.00
                                            </h4>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-6 col-12">
                                    <div class="product-image">
                                        <a href="product-left-sidebar.html">
                                            <img src="assets/images/flower/product/2.jpg" class="blur-up lazyload"
                                                alt="">
                                        </a>
                                        <div class="product-details">
                                            <h6 class="font-light">Fully Confirtable</h6>
                                            <a href="product-left-sidebar.html" class="">
                                                <h3>Beautiful and Fresh Bookey</h3>
                                            </a>
                                            <h4 class="theme-color mt-1">$49.00
                                            </h4>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-6 col-12">
                                    <div class="product-image">
                                        <a href="product-left-sidebar.html">
                                            <img src="assets/images/flower/product/3.jpg" class="blur-up lazyload"
                                                alt="">
                                        </a>
                                        <div class="product-details">
                                            <h6 class="font-light">Fully Confirtable</h6>
                                            <a href="product-left-sidebar.html" class="">
                                                <h3>Beautiful and Fresh Bookey</h3>
                                            </a>
                                            <h4 class="theme-color mt-1">$49.00
                                            </h4>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-6 col-12">
                                    <div class="product-image">
                                        <a href="product-left-sidebar.html">
                                            <img src="assets/images/flower/product/4.jpg" class="blur-up lazyload"
                                                alt="">
                                        </a>
                                        <div class="product-details">
                                            <h6 class="font-light">Fully Confirtable</h6>
                                            <a href="product-left-sidebar.html" class="">
                                                <h3>Beautiful and Fresh Bookey</h3>
                                            </a>
                                            <h4 class="font-light mt-1"><del>$49.00</del> <span
                                                    class="theme-color">$35.50</span>
                                            </h4>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-6 col-12">
                                    <div class="product-image">
                                        <a href="product-left-sidebar.html">
                                            <img src="assets/images/flower/product/5.jpg" class="blur-up lazyload"
                                                alt="">
                                        </a>
                                        <div class="product-details">
                                            <h6 class="font-light">Fully Confirtable</h6>
                                            <a href="product-left-sidebar.html" class="">
                                                <h3>Beautiful and Fresh Bookey</h3>
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
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->


    <!-- category section start -->
    <section class="category-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title title-2 text-center">
                        <h2>다양한 요금제</h2>
                        <h5>선택은 내 취향대로</h5>
                    </div>
                </div>
            </div>

            <div class="category-wrapper category-slider white-arrow mb-5">
                <div>
                    <div class="category-wrap category-color">
                        <a href="shop-category-slider.html">
                            <img src="assets/images/shoes/category/1.png" class="img-fluid blur-up lazyload"
                                alt="category image">
                            <div class="category-content category-text t-text">
                                <h3>5G 프리미어</h3>
                                <span>88,000원</span>
                            </div>
                        </a>
                    </div>
                </div>

                <div>
                    <div class="category-wrap category-color">
                        <a href="shop-category-slider.html">
                            <img src="assets/images/shoes/category/2.png" class="img-fluid blur-up lazyload"
                                alt="category image">
                            <div class="category-content category-text t-text">
                                <h3>5G 베이직</h3>
                                <span>77,000원</span>
                            </div>
                        </a>
                    </div>
                </div>

                <div>
                    <div class="category-wrap category-color">
                        <a href="shop-category-slider.html">
                            <img src="assets/images/shoes/category/3.png" class="img-fluid blur-up lazyload"
                                alt="category image">
                            <div class="category-content category-text t-text">
                                <h3>5G 심플</h3>
                                <span>66,000원</span>
                            </div>
                        </a>
                    </div>
                </div>

                <div>
                    <div class="category-wrap category-color">
                        <a href="shop-category-slider.html">
                            <img src="assets/images/shoes/category/4.png" class="img-fluid blur-up lazyload"
                                alt="category image">
                            <div class="category-content category-text t-text">
                                <h3>5G 슬림</h3>
                                <span>55,000원</span>
                            </div>
                        </a>
                    </div>
                </div>

                <div>
                    <div class="category-wrap category-color">
                        <a href="shop-category-slider.html">
                            <img src="assets/images/shoes/category/5.png" class="img-fluid blur-up lazyload"
                                alt="category image">
                            <div class="category-content category-text t-text">
                                <h3>H틴</h3>
                                <span>33,000원</span>
                            </div>
                        </a>
                    </div>
                </div>

                <div>
                    <div class="category-wrap category-color">
                        <a href="shop-category-slider.html">
                            <img src="assets/images/shoes/category/6.png" class="img-fluid blur-up lazyload"
                                alt="category image">
                            <div class="category-content category-text t-text">
                                <h3>ZEM 베이직</h3>
                                <span>33,000원</span>
                            </div>
                        </a>
                    </div>
                </div>

                <div>
                    <div class="category-wrap category-color">
                        <a href="shop-category-slider.html">
                            <img src="assets/images/shoes/category/7.png" class="img-fluid blur-up lazyload"
                                alt="category image">
                            <div class="category-content category-text t-text">
                                <h3>Hero 55</h3>
                                <span>55,000원</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- category section end -->

    <!-- tap to top Section Start -->
    <div class="tap-to-top">
        <a href="#home">
            <i class="fas fa-chevron-up"></i>
        </a>
    </div>
    <!-- tap to top Section End -->

    <div class="bg-overlay"></div>
<c:import url="./temp/footer.jsp"></c:import>
    <script>
    const avatarInput = document.querySelector('#avatarInput');
    const avatarName = document.querySelector('.input-file__name');
    const imagePreview = document.querySelector('.image-preview');

    avatarInput.addEventListener('change', e => {
        let input = e.currentTarget;
        let fileName = input.files[0].name;
        avatarName.innerText = `File: ${fileName}`;

        const fileReader = new FileReader();
        fileReader.addEventListener('load', e => {
            let imageData = e.target.result;
            imagePreview.setAttribute('src', imageData);
        })

        fileReader.readAsDataURL(input.files[0]);
    });

    </script>
<c:import url="./temp/commonJS.jsp"></c:import>
</body>

</html>
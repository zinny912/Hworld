<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
   	<c:import url="../temp/style.jsp"></c:import>
    <title>FAQ</title>    
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
                <div class="col-12 search-section">
                    <h3>고객지원</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Contact us</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>

    <!-- Breadcrumb section end -->

    <!-- FAQ Section Start -->
    <section class="faq-section my-5">
        <div class="container">
            <div class="row g-lg-5 g-4">
                <div class="col-md-4 zi-1">
                    <div class="faq-contain">
                        <div class="faq-image">
                            <img src="/assets/images/inner-page/faq/guides.png" class="img-fluid blur-up lazyload"
                                alt="">
                        </div>
                        <h2 class="fw-bold"><a href="notice">공지사항</a></h2><br>
                        <h5>H World의 소식과 안내 사항을 확인하세요.</h5>
                    </div>
                </div>

                <div class="col-md-4 zi-1">
                    <div class="faq-contain">
                        <div class="faq-image">
                            <img src="/assets/images/inner-page/faq/faq.png" class="img-fluid blur-up lazyload" alt="">
                        </div>
                        <h2 class="fw-bold"><a href="qna">1:1 문의</a></h2><br>
                        <h5>궁금한 사항을 1:1 문의로 남겨주시면 신속히 답변드리겠습니다</h5>
                    </div>
                </div>

                <div class="col-md-4 zi-1">
                    <div class="faq-contain">
                        <div class="faq-image">
                            <img src="/assets/images/inner-page/faq/community.png" class="img-fluid blur-up lazyload"
                                alt="">
                        </div>
                        <h2 class="fw-bold"><a href="archive">신청서/자료실</a></h2><br>
                        <h5>가입/변경/해지 관련 신청·동의서 다운로드</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- FAQ Section End -->  
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
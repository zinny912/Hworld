<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>FAQ</title>
    <style>
        /**=====================
       Archive Page Css Start
  ==========================**/
  
  .archive-section {
    margin-top: 100px; }
    .archive-section .archive-contain {
      text-align: center;
      padding: calc(22px + (40 - 22) * ((100vw - 320px) / (1920 - 320)));
      border-radius: 10px;
      height: 100%;
      -webkit-transition: 0.5s ease;
      transition: 0.5s ease;
      z-index: 1;
      background-color: #fff;
      -webkit-box-shadow: 0 8px 40px 0 rgba(33, 37, 41, 0.1);
              box-shadow: 0 8px 40px 0 rgba(33, 37, 41, 0.1); }
      .archive-section .archive-contain .archive-image {
        width: 60px;
        height: 60px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
            -ms-flex-align: center;
                align-items: center;
        -webkit-box-pack: center;
            -ms-flex-pack: center;
                justify-content: center;
        margin: 0 auto; }
        .archive-section .archive-contain .archive-image img {
          -o-object-fit: contain;
             object-fit: contain; }
      .archive-section .archive-contain h2 {
        margin-top: calc(18px + (20 - 18) * ((100vw - 320px) / (1920 - 320)));
        font-size: calc(20px + (22 - 20) * ((100vw - 320px) / (1920 - 320)));
        font-weight: 500;
        color: #212529; }
      .archive-section .archive-contain h5 {
        color: #7e7e7e;
        font-weight: 300;
        margin-top: 10px;
        line-height: 1.6;
        margin-bottom: -2px;
        margin: 0 auto -2px;
        letter-spacing: 0.03em; }
  
  .archive-details .archive-link-box {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: start;
        -ms-flex-align: start;
            align-items: flex-start;
    position: sticky;
    top: 30px; }
    .archive-details .archive-link-box ul li {
      display: block; }
    .archive-details .archive-link-box a {
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-align: start;
          -ms-flex-align: start;
              align-items: flex-start;
      position: relative;
      padding-bottom: 12px;
      padding-top: 12px;
      color: #212529; }
      .archive-details .archive-link-box a:after {
        content: "";
        position: absolute;
        width: 100%;
        height: 1px;
        bottom: 0;
        left: 0;
        background-color: rgba(120, 144, 174, 0.23); }
        @media (max-width: 575px) {
          .archive-details .archive-link-box a:after {
            opacity: 0; } }
      .archive-details .archive-link-box a h4 {
        font-weight: 200;
        font-size: calc(15px + (18 - 15) * ((100vw - 320px) / (1920 - 320))); }
      .archive-details .archive-link-box a h5 {
        font-size: calc(15px + (16 - 15) * ((100vw - 320px) / (1920 - 320)));
        font-weight: 200;
        margin-left: 10px; }
        [dir="rtl"] .archive-details .archive-link-box a h5 {
          margin-left: 0;
          margin-right: 10px; }
      .archive-details .archive-link-box a + a {
        margin-top: 15px; }
  
  .archive-heading {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: start;
        -ms-flex-align: start;
            align-items: flex-start; }
    .archive-heading + .archive-heading {
      margin-top: calc(30px + (45 - 30) * ((100vw - 320px) / (1920 - 320))); }
    .archive-heading .feather {
      width: calc(20px + (22 - 20) * ((100vw - 320px) / (1920 - 320)));
      height: auto;
      margin-top: -3px; }
    .archive-heading .archive-option {
      margin-left: 10px;
      width: calc(100% - 0px); }
      [dir="rtl"] .archive-heading .archive-option {
        margin-left: 0;
        margin-right: 10px; }
      .archive-heading .archive-option h3 {
        font-size: calc(16px + (20 - 16) * ((100vw - 320px) / (1920 - 320)));
        font-weight: 400;
        margin-top: -5px;
        margin-bottom: 0;
        line-height: 1.5; }
      .archive-heading .archive-option h6 {
        font-size: calc(14px + (16 - 14) * ((100vw - 320px) / (1920 - 320)));
        line-height: 1.6;
        letter-spacing: 0.05em;
        margin-bottom: -4px;
        margin-top: 10px; }


/* Search Bar position */
.search-section .search-bar .input-group {
  width: 50%;
  margin: 0px 0px 30px 2em;
  margin-right : 0px; }

.search-section .search-bar button {
  padding: 15px 35px;
  background-color: var(--theme-color);
  color: #fff;
  border: 1px solid var(--theme-colors); }
  .search-section .search-bar button i {
    color: #fff; }
  .search-section .search-bar button.search-button {
    padding: 15px; }

.search-section .search-bar input:focus {
  border-color: #ced4da; }
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

    <!-- Archive Section Start -->

    <section class="archive-section pt-0 pb-5 mb-5">
        <div class="container">
      
            <div class="material-details mb-5">
                <div class="title title1 title-effect mb-1 title-left">
                    <h2>신청서/자료실</h2>
                </div>
            </div>

            <div class="row g-lg-5 g-4">
                <div class="col-md-4 zi-1">
                    <div class="archive-contain">
                        <div class="archive-image">
                            <img src="/assets/images/inner-page/faq/guides.png" class="img-fluid blur-up lazyload"
                                alt="">
                        </div>
                        <h2 class="mb-2 fw-bold"><a href="./notice.html">가입</a></h2>
                        <h5 class="mb-3">H World 유무선 통합 신청서</h5>
                            <a class="btn btn-solid-default btn-spacing" href="#" onclick="window.print();">
                                다운로드 <i class="bi bi-download"></i>
                            </a>
                    </div>
                </div>

                <div class="col-md-4 zi-1">
                    <div class="archive-contain">
                        <div class="archive-image">
                            <img src="/assets/images/inner-page/faq/faq.png" class="img-fluid blur-up lazyload" alt="">
                        </div>
                        <h2 class="mb-2 fw-bold"><a href="./notice.html">변경</a></h2>
                        <h5 class="mb-3">휴대폰 114 번호안내 신청서</h5>
                            <button type="button" class="btn btn-solid-default btn-spacing">
                                다운로드 <i class="bi bi-download"></i>
                            </button>
                    </div>
                </div>

                <div class="col-md-4 zi-1">
                    <div class="archive-contain">
                        <div class="archive-image">
                            <img src="/assets/images/inner-page/faq/community.png" class="img-fluid blur-up lazyload" alt="">
                        </div>
                        <h2 class="mb-2 fw-bold"><a href="#">해지</a></h2>
                        <h5 class="mb-3">KT 모바일 해지 신청서</h5>
                            <button type="button" class="btn btn-solid-default btn-spacing">
                                다운로드 <i class="bi bi-download"></i>
                            </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- archive Section End -->  
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
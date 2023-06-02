<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">

<head>
	<meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
        content="Voxo /admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 /admin template with unlimited possibilities.">
    <meta name="keywords"
        content="/admin template, Voxo /admin template, dashboard template, flat /admin template, responsive /admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="/admin/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="/admin/images/favicon.png" type="image/x-icon">
    <title>admin Dashboard</title>

    <!-- Google font-->
    <link
        href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <!-- Linear Icon css -->
    <link rel="stylesheet" href="/admin/css/linearicon.css">

    <!-- fontawesome css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/font-awesome.css">

    <!-- Themify icon css-->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/themify.css">

    <!-- ratio css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/ratio.css">

    <!-- Feather icon css-->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/feather-icon.css">

    <!-- Plugins css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/scrollbar.css">
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/animate.css">

    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/bootstrap.css">

    <!-- vector map css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vector-map.css">

    <!-- slick slider css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/slick.css">
    <link rel="stylesheet" type="text/css" href="/admin/css/slick-theme.css">

    <!-- App css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/style.css">

    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="/admin/css/responsive.css">
</head>

<body>
    <!-- tap on top start -->
    <div class="tap-top">
        <span class="lnr lnr-chevron-up"></span>
    </div>
    <!-- tap on tap end -->

    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper dark-sidebar" id="pageWrapper">
        <!-- Page Header Start-->
        <div class="page-header">
            <div class="header-wrapper row m-0">
                <div class="header-logo-wrapper col-auto p-0">
                    <div class="logo-wrapper">
                        <a href="admin.html">
                            <img class="img-fluid main-logo" src="/admin/images/logo/logo.png" alt="logo">
                            <img class="img-fluid white-logo" src="/admin/images/logo/logo-white.png" alt="logo">
                        </a>
                    </div>
                    <div class="toggle-sidebar">
                        <i class="status_toggle middle sidebar-toggle" data-feather="align-center"></i>
                    </div>
                </div>

                <form class="form-inline search-full col" action="javascript:void(0)" method="get">
                    <!-- <div class="form-group w-100">
                        <div class="Typeahead Typeahead--twitterUsers">
                            <div class="u-posRelative">
                                <input class="demo-input Typeahead-input form-control-plaintext w-100" type="text"
                                    placeholder="Search Voxo .." name="q" title="" autofocus>
                                <i class="close-search" data-feather="x"></i>
                                <div class="spinner-border Typeahead-spinner" role="status">
                                    <span class="sr-only">Loading...</span>
                                </div>
                            </div>
                            <div class="Typeahead-menu"></div>
                        </div>
                    </div> -->
                </form>
                <div class="nav-right col-4 pull-right right-header p-0">
                    <ul class="nav-menus">
                        <li>
                            <span class="header-search">
                                <span class="lnr lnr-magnifier"></span>
                            </span>
                        </li>


                        <li>
                            <div class="mode">
                                <span class="lnr lnr-moon"></span>
                            </div>
                        </li>

                        <li class="maximize">
                            <a class="text-dark" href="javascript:void(0)!" onclick="javascript:toggleFullScreen()">
                                <span class="lnr lnr-frame-expand"></span>
                            </a>
                        </li>
                        <li class="profile-nav onhover-dropdown pe-0 me-0">
                            <div class="media profile-media">
                                <img class="user-profile rounded-circle" src="/admin/images/users/4.jpg" alt="">
                                <div class="user-name-hide media-body">
                                    <span>Emay Walter</span>
                                    <p class="mb-0 font-roboto">admin<i class="middle fa fa-angle-down"></i></p>
                                </div>
                            </div>
                            <ul class="profile-dropdown onhover-show-div">
                                <li>
                                    <a href="all-users.html">
                                        <i data-feather="users"></i>
                                        <span>회원</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="order-list.html">
                                        <i data-feather="archive"></i>
                                        <span>주문</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="profile-setting.html">
                                        <i data-feather="settings"></i>
                                        <span>설정</span>
                                    </a>
                                </li>
                                <li>
                                    <a data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                                        href="javascript:void(0)">
                                        <i data-feather="log-out"></i>
                                        <span>로그아웃</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Page Header Ends-->

        <!-- Page Body Start-->
        <div class="page-body-wrapper">
            <!-- Page Sidebar Start-->
            <div class="sidebar-wrapper">
                <div>
                    <div class="logo-wrapper logo-wrapper-center">
                        <a href="index.html" data-bs-original-title="" title="">
                            <img class="img-fluid for-dark" src="/admin/images/logo/logo-white.png" alt="">
                        </a>
                        <div class="back-btn">
                            <i class="fa fa-angle-left"></i>
                        </div>
                        <div class="toggle-sidebar">
                            <i class="status_toggle middle sidebar-toggle" data-feather="grid"></i>
                        </div>
                    </div>
                    <div class="logo-icon-wrapper">
                        <a href="index.html">
                            <img class="img-fluid main-logo" src="/admin/images/logo/logo.png" alt="logo">
                        </a>
                    </div>
                    <nav class="sidebar-main">
                        <div class="left-arrow" id="left-arrow">
                            <i data-feather="arrow-left"></i>
                        </div>

                        <div id="sidebar-menu">
                            <ul class="sidebar-links" id="simple-bar">
                                <li class="back-btn"></li>


                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title link-nav" href="home">
                                        <i data-feather="home"></i>
                                        <span>홈</span>
                                    </a>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i data-feather="users"></i>
                                        <span>회원</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="memberList">회원 목록</a>
                                        </li>
                                        <li>
                                            <a href="phoneList">회선 목록</a>
                                        </li>
                                        <li>
                                            <a href="memberAdd">회원 추가</a>
                                        </li>
                                    </ul>
                                </li>


                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title link-nav" href="orderList">
                                        <i data-feather="archive"></i>
                                        <span>주문</span>
                                    </a>
                                    <!-- <ul class="sidebar-submenu">
                                        <li>
                                            <a href="">Order List</a>
                                        </li>
                                        <li>
                                            <a href="order-detail.html">Order Detail</a>
                                        </li>
                                        <li>
                                            <a href="order-tracking.html">Order Tracking</a>
                                        </li>
                                    </ul> -->
                                </li>

                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i data-feather="box"></i>
                                        <span>상품</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="productList">상품 목록</a>
                                        </li>

                                        <li>
                                            <a href="productReview">상품 리뷰</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i data-feather="phone"></i>
                                        <span>문의</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="productInquiry">상품 문의</a>
                                        </li>
                                        <li>
                                            <a href="generalInquiry">일반 문의</a>
                                        </li>
                                    </ul>
                                </li>
                        
                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i data-feather="archive"></i>
                                        <span>납부</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="paymentList">납부 목록</a>
                                        </li>
                                        <li>
                                            <a href="unpaidList">미납 목록</a>
                                        </li>
                                    </ul>
                                </li>
                                



                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i data-feather="settings"></i>
                                        <span>설정</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="profileSetting">프로필 설정</a>
                                        </li>
                                    </ul>
                                </li>                                
                            </ul>
                        </div>
                        <div class="right-arrow" id="right-arrow">
                            <i data-feather="arrow-right"></i>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Page Sidebar Ends-->

            <!-- index body start -->
            <div class="page-body">
                <div class="container-fluid">
                    <div class="row">
                        <!-- chart caard section start -->
                        <div class="col-sm-6 col-xxl-3 col-lg-6">
                            <div class="b-b-primary border-5 border-0 card o-hidden">
                                <div class="custome-1-bg b-r-4 card-body">
                                    <div class="media align-items-center static-top-widget">
                                        <div class="media-body p-0">
                                            <span class="m-0">총 수익 / 월
                                            </span>
                                            <h4 class="mb-0 counter">30,000,000원
                                                <span class="badge badge-light-primary grow">
                                                    <i data-feather="trending-up"></i>8.5%</span>
                                            </h4>
                                        </div>
                                        <div class="align-self-center text-center">
                                            <i data-feather="database"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xxl-3 col-lg-6">
                            <div class="b-b-danger border-5 border-0 card o-hidden">
                                <div class=" custome-2-bg  b-r-4 card-body">
                                    <div class="media static-top-widget">
                                        <div class="media-body p-0">
                                            <span class="m-0">주문 건수 / 월</span>
                                            <h4 class="mb-0 counter">985건
                                                <span class="badge badge-light-danger grow">
                                                    <i data-feather="trending-down"></i>8.5%</span>
                                            </h4>
                                        </div>
                                        <div class="align-self-center text-center">
                                            <i data-feather="shopping-bag"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xxl-3 col-lg-6">
                            <div class="b-b-secondary border-5 border-0  card o-hidden">
                                <div class=" custome-3-bg b-r-4 card-body">
                                    <div class="media static-top-widget">
                                        <div class="media-body p-0">
                                            <span class="m-0">전체 회선</span>
                                            <h4 class="mb-0 counter">89399
                                                <span class="badge badge-light-secondary grow ">
                                                    <i data-feather="trending-up"></i>8.5%</span>
                                            </h4>
                                        </div>

                                        <div class="align-self-center text-center">
                                            <i data-feather="message-circle"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xxl-3 col-lg-6">
                            <div class="b-b-success border-5 border-0 card o-hidden">
                                <div class=" custome-4-bg b-r-4 card-body">
                                    <div class="media static-top-widget">
                                        <div class="media-body p-0">
                                            <span class="m-0">가입 회선/월</span>
                                            <h4 class="mb-0 counter">451
                                                <span class="badge badge-light-success grow">
                                                    <i data-feather="trending-down"></i>8.5%</span>
                                            </h4>
                                        </div>

                                        <div class="align-self-center text-center">
                                            <i data-feather="user-plus"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- chart caard section End -->

                        <!-- Earning chart star-->
                        <div class="col-xl-4">
                            <div class="card o-hidden card-hover">
                                <div class="card-header border-0 pb-1">
                                    <div class="card-header-title">
                                        <h4>주문 건수 / 환불 건수</h4>
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <div id="bar-chart-earning"></div>
                                </div>
                            </div>
                        </div>
                        <!-- Earning chart end-->

                        <!-- visitors chart start-->
                        <div class="col-xxl-4 col-md-6">
                            <div class="h-100">
                                <div class="card o-hidden card-hover">
                                    <div class="card-header border-0">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="card-header-title">
                                                <h4>사용 중 요금제</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body pt-0">
                                        <div class="pie-chart">
                                            <div id="pie-chart-visitors"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- visitors chart end-->


                       

                        <!-- Recent Activity start-->
                        <!-- <div class="col-xxl-4 col-md-6">
                            <div class="card o-hidden card-hover">
                                <div class="card-header border-0">
                                    <div class="card-header-title">
                                        <h4>Recent Activity</h4>
                                    </div>
                                </div>

                                <div class="card-body pt-0">
                                    <ul class="recent-activity">
                                        <li class="recent-item">
                                            <div class="recent-icon">
                                                <span class="lnr lnr-calendar-full"></span>
                                                <p>Calendar Updated</p>
                                            </div>

                                            <div class="recent-timer">
                                                <h6 class="color-1">Just Now</h6>
                                            </div>
                                        </li>
                                        <li class="recent-item">
                                            <div class="recent-icon">
                                                <i data-feather="alert-circle"></i>
                                                <p>Commrnted on a post</p>
                                            </div>

                                            <div class="recent-timer">
                                                <h6 class="color-2">5 Min</h6>
                                            </div>
                                        </li>
                                        <li class="recent-item">
                                            <div class="recent-icon">
                                                <i data-feather="truck"></i>
                                                <p>Order 392 shipped</p>
                                            </div>

                                            <div class="recent-timer">
                                                <h6 class="color-3">12 Min</h6>
                                            </div>
                                        </li>
                                        <li class="recent-item">
                                            <div class="recent-icon">
                                                <i data-feather="dollar-sign"></i>
                                                <p>Invoice 653 has been paid</p>
                                            </div>

                                            <div class="recent-timer">
                                                <h6 class="color-4">45 Min</h6>
                                            </div>
                                        </li>
                                        <li class="recent-item">
                                            <div class="recent-icon">
                                                <span class="lnr lnr-user"></span>
                                                <p>A new user has been added</p>
                                            </div>

                                            <div class="recent-timer">
                                                <h6 class="color-1">1 Hr</h6>
                                            </div>
                                        </li>
                                        <li class="recent-item mb-0">
                                            <div class="recent-icon">
                                                <span class="lnr lnr-select"></span>
                                                <p>Finace report</p>
                                            </div>

                                            <div class="recent-timer">
                                                <h6 class="color-2">Just Now</h6>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div> -->
                        <!-- Recent Activity end-->

                        <!-- Browser States start-->
                        <div class="col-xxl-4 col-md-6">
                            <div class="card o-hidden card-hover">
                                <div class="card-header border-0">
                                    <div class="card-header-title">
                                        <h4>많이 팔린 상품</h4>
                                    </div>
                                </div>

                                <div class="card-body pt-0">
                                    <ul class="brower-states">
                                        <li class="brower-item">
                                            <div class="browser-image">
                                                <img src="/admin/images/brower-image/chrome.png" class="img-fluid"
                                                    alt="">
                                                <h5>아이폰 14</h5>
                                            </div>

                                            <div class="browser-progressbar">
                                                <h6>42%</h6>
                                            </div>
                                        </li>
                                        <li class="brower-item">
                                            <div class="browser-image">
                                                <img src="/admin/images/brower-image/firefox.png" class="img-fluid"
                                                    alt="">
                                                <h5>아이폰 13 미니</h5>
                                            </div>

                                            <div class="browser-progressbar">
                                                <h6>23%</h6>
                                            </div>
                                        </li>
                                        <li class="brower-item">
                                            <div class="browser-image">
                                                <img src="/admin/images/brower-image/internet-explorer.png"
                                                    class="img-fluid" alt="">
                                                <h5>갤럭시 S23</h5>
                                            </div>

                                            <div class="browser-progressbar">
                                                <h6>10%</h6>
                                            </div>
                                        </li>
                                        <li class="brower-item">
                                            <div class="browser-image">
                                                <img src="/admin/images/brower-image/opera.png" class="img-fluid"
                                                    alt="">
                                                <h5>아이폰 14 프로 맥스</h5>
                                            </div>

                                            <div class="browser-progressbar">
                                                <h6>8%</h6>
                                            </div>
                                        </li>
                                        <li class="brower-item">
                                            <div class="browser-image">
                                                <img src="/admin/images/brower-image/safari.png" class="img-fluid"
                                                    alt="">
                                                <h5>갤럭시 S22</h5>
                                            </div>

                                            <div class="browser-progressbar">
                                                <h6>3%</h6>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Browser States end-->


                        <!-- Earning chart star-->
                        <div class="col-xl-12">
                            <div class="card o-hidden ">
                                <div class="card-header border-0 pb-1">
                                    <div class="card-header-title">
                                        <h4>월 별 가입 회선 수</h4>
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <div id="report-chart"></div>
                                </div>
                            </div>
                        </div>
                        <!-- Earning chart  end-->


                    </div>
                </div>
                <!-- Container-fluid Ends-->

                <!-- footer start-->
                <div class="container-fluid">
                    <footer class="footer">
                        <div class="row">
                            <div class="col-md-12 footer-copyright text-center">
                                <p class="mb-0">Copyright 2023 © admin page by h world</p>
                            </div>
                        </div>
                    </footer>
                </div>
                <!-- footer End-->
            </div>
            <!-- index body end -->
        </div>
        <!-- Page Body End -->
    </div>
    <!-- page-wrapper End-->

    <!-- Modal Start -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog  modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <h5 class="modal-title" id="staticBackdropLabel">Logging Out</h5>
                    <p>Are you sure you want to log out?</p>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    <div class="button-box">
                        <button type="button" class="btn btn--no " data-bs-dismiss="modal">No</button>
                        <button type="button" class="btn  btn--yes btn-primary">Yes</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal End -->

    <!-- latest js -->
    <script src="/admin/js/jquery-3.6.0.min.js"></script>

    <!-- Bootstrap js -->
    <script src="/admin/js/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- feather icon js -->
    <script src="/admin/js/icons/feather-icon/feather.min.js"></script>
    <script src="/admin/js/icons/feather-icon/feather-icon.js"></script>

    <!-- scrollbar simplebar js -->
    <script src="/admin/js/scrollbar/simplebar.js"></script>
    <script src="/admin/js/scrollbar/custom.js"></script>

    <!-- Sidebar jquery -->
    <script src="/admin/js/config.js"></script>

    <!-- tooltip init js -->
    <script src="/admin/js/tooltip-init.js"></script>

    <!-- Plugins JS -->
    <script src="/admin/js/sidebar-menu.js"></script>
    <script src="/admin/js/notify/bootstrap-notify.min.js"></script>
    <script src="/admin/js/notify/index.js"></script>

    <!-- Apexchar js -->
    <script src="/admin/js/chart/apex-chart/apex-chart1.js"></script>
    <script src="/admin/js/chart/apex-chart/moment.min.js"></script>
    <script src="/admin/js/chart/apex-chart/apex-chart.js"></script>
    <script src="/admin/js/chart/apex-chart/stock-prices.js"></script>
    <script src="/admin/js/chart/apex-chart/chart-custom1.js"></script>

    <!-- customizer js -->
    <script src="/admin/js/customizer.js"></script>

    <!-- ratio js -->
    <script src="/admin/js/ratio.js"></script>

    <!-- Theme js -->
    <script src="/admin/js/script.js"></script>
</body>

</html>
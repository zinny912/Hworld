<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
	<meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
        content="Voxo admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords"
        content="admin template, Voxo admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="/admin/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="/admin/images/favicon.png" type="image/x-icon">
    <title>Voxo - Profile Setting</title>

    <!-- Google font -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap">

    <!-- Linear Icon css -->
    <link rel="stylesheet" href="/admin/css/linearicon.css">

    <!-- fontawesome css  -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/font-awesome.css">

    <!-- Themify icon css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/themify.css">

    <!--Drop zon css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/dropzone.css">

    <!-- Feather icon css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/feather-icon.css">

    <!-- Select2 css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/select2.min.css">

    <!-- Plugins css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/scrollbar.css">
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/animate.css">
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/chartist.css">
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/date-picker.css">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/bootstrap.css">

    <!-- Bootstrap-tag input css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/vendors/bootstrap-tagsinput.css">

    <!-- App css -->
    <link rel="stylesheet" type="text/css" href="/admin/css/style.css">

    <!-- Responsive css -->
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
                        <a href="index.html">
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
                                    <p class="mb-0 font-roboto">Admin<i class="middle fa fa-angle-down"></i></p>
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
                                    <a class="sidebar-link sidebar-title link-nav" href="adminHome">
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

            <!-- Settings Section Start -->
            <div class="page-body">
                <div class="title-header">
                    <h5>프로필 설정</h5>
                </div>

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-sm-12">
                                    <!-- Details Start -->
                                    <div class="card">
                                        <div class="card-body">
                                            <form class="theme-form theme-form-2 mega-form">
                                                <div class="row">
                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">이름</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text"
                                                                placeholder="Enter Your Name">
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">핸드폰 번호
                                                            </label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="number"
                                                                placeholder="Enter Your Number">
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">이메일 (ID)
                                                            </label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="email"
                                                                placeholder="Enter Your Email Address">
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">비밀번호</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="password"
                                                                placeholder="Enter Your Password">
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">비밀번호 확인</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="password"
                                                                placeholder="Enter Your Confirm Passowrd">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-footer text-end border-0 pt-0">
                                                    <button class="btn btn-primary me-3" type="submit">Submit</button>
                                                    <button class="btn btn-outline-primary" type="button">Cancel</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    
                                    <!-- Details End -->

                                    <!-- Address Start -->
                                    <!-- <div class="card">
                                        <div class="card-body">
                                            <div class="card-header-2 mb-3">
                                                <h5>Address</h5>
                                            </div>

                                            <div class="save-details-box">
                                                <div class="row g-4">
                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="save-details">
                                                            <div class="save-name">
                                                                <h5>Mark Jugal</h5>
                                                            </div>

                                                            <div class="save-position">
                                                                <h6>Home</h6>
                                                            </div>

                                                            <div class="save-address">
                                                                <p>549 Sulphur Springs Road</p>
                                                                <p>Downers Grove, IL</p>
                                                                <p>60515</p>
                                                            </div>

                                                            <div class="mobile">
                                                                <p class="mobile">Mobile No. +1-123-456-7890</p>
                                                            </div>

                                                            <div class="button">
                                                                <a href="javascript:void(0)" class="btn btn-sm">Edit</a>
                                                                <a href="javascript:void(0)"
                                                                    class="btn btn-sm">Remove</a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="save-details">
                                                            <div class="save-name">
                                                                <h5>Method Zaki</h5>
                                                            </div>

                                                            <div class="save-position">
                                                                <h6>Office</h6>
                                                            </div>

                                                            <div class="save-address">
                                                                <p>549 Sulphur Springs Road</p>
                                                                <p>Downers Grove, IL</p>
                                                                <p>60515</p>
                                                            </div>

                                                            <div class="mobile">
                                                                <p class="mobile">Mobile No. +1-123-456-7890</p>
                                                            </div>

                                                            <div class="button">
                                                                <a href="javascript:void(0)" class="btn btn-sm">Edit</a>
                                                                <a href="javascript:void(0)" class="btn btn-sm">
                                                                    Remove</a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="save-details">
                                                            <div class="save-name">
                                                                <h5>Mark Jugal</h5>
                                                            </div>

                                                            <div class="save-position">
                                                                <h6>Home</h6>
                                                            </div>

                                                            <div class="save-address">
                                                                <p>549 Sulphur Springs Road</p>
                                                                <p>Downers Grove, IL</p>
                                                                <p>60515</p>
                                                            </div>

                                                            <div class="mobile">
                                                                <p class="mobile">Mobile No. +1-123-456-7890</p>
                                                            </div>

                                                            <div class="button">
                                                                <a href="javascript:void(0)" class="btn btn-sm">Edit</a>
                                                                <a href="javascript:void(0)"
                                                                    class="btn btn-sm">Remove</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->
                                    <!-- Address End -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Settings Section End -->
        </div>
        <!-- Page Body End-->

        <!-- footer start-->
        <div class="container-fluid">
            <footer class="footer">
                <div class="row">
                    <div class="col-md-12 footer-copyright text-center">
                        <p class="mb-0">Copyright 2021 © Voxo theme by pixelstrap</p>
                    </div>
                </div>
            </footer>
        </div>
        <!-- footer End-->
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

    <!-- latest jquery-->
    <script src="/admin/js/jquery-3.6.0.min.js"></script>

    <!-- Bootstrap js-->
    <script src="/admin/js/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- feather icon js-->
    <script src="/admin/js/icons/feather-icon/feather.min.js"></script>
    <script src="/admin/js/icons/feather-icon/feather-icon.js"></script>

    <!-- scrollbar simplebar js-->
    <script src="/admin/js/scrollbar/simplebar.js"></script>
    <script src="/admin/js/scrollbar/custom.js"></script>

    <!-- Sidebar jquery-->
    <script src="/admin/js/config.js"></script>
    <!-- Plugins JS start-->

    <!-- bootstrap tag-input JS start-->
    <script src="/admin/js/bootstrap-tagsinput.min.js"></script>
    <script src="/admin/js/sidebar-menu.js"></script>

    <!-- customizer js start  -->
    <script src="/admin/js/customizer.js"></script>
    <!-- customizer js end -->

    <!--Dropzon start-->
    <script src="/admin/js/dropzone/dropzone.js"></script>
    <script src="/admin/js/dropzone/dropzone-script.js"></script>

    <!--Dropzon start-->
    <script src="/admin/js/notify/bootstrap-notify.min.js"></script>
    <script src="/admin/js/notify/index.js"></script>
    <!-- Plugins JS Ends-->

    <!-- Theme js-->
    <script src="/admin/js/script.js"></script>
</body>

</html>
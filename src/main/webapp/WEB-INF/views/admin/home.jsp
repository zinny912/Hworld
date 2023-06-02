<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">

<head>
	<meta charset="UTF-8">
    <c:import url="adminStyle.jsp"></c:import>    
</head>

<body>
   <c:import url="adminHeader.jsp"></c:import>  
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
    
    <!-- Apexchar js -->
    <script src="/admin/js/chart/apex-chart/apex-chart1.js"></script>
    <script src="/admin/js/chart/apex-chart/moment.min.js"></script>
    <script src="/admin/js/chart/apex-chart/apex-chart.js"></script>
    <script src="/admin/js/chart/apex-chart/stock-prices.js"></script>
    <script src="/admin/js/chart/apex-chart/chart-custom1.js"></script>

    <!-- ratio js -->
    <script src="/admin/js/ratio.js"></script>

    <!-- Theme js -->
    <script src="/admin/js/script.js"></script>
</body>

</html>
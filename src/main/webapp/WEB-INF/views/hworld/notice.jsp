<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>Order Tracking</title>
    <style>
        .search-section .search-bar .input-group {
           margin : 0 0;
        }

        .tracker-table {
            padding-top: 0;
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
                            <li class="breadcrumb-item active" aria-current="page">공지사항</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->

    <!-- Notice Section Start -->
    <section class="section-b-space">
        <div class="container">
            <div class="row">

                <div class="material-details">
                    <div class="title title1 title-effect mb-1 title-left">
                        <h2>공지사항</h2>
                    </div>
                </div>

                <div class="col-12 overflow-visible">
                    <div class="tracker-table">  
                        <div class="col-12 search-section mb-3">
                            <div class="search-bar col-12">
                                <div class="d-flex justify-content-end">
                                    <div class="col-8">

                                    </div>
                                    <div class="input-group search-bar">
                                        <input type="search" class="form-control" placeholder="Search">
                                        <button class="input-group-text t" id="basic-addon3">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="table-head">
                                        <th scope="col">글번호</th>
                                        <th scope="col">제목</th>
                                        <th scope="col">조회수</th>
                                        <th scope="col">등록일</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>
                                            <p>중요</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold"><a href="#">3 SW. Summit St. Lithonia, GA 30038</a></p>
                                        </td>
                                        <td>
                                            <p>64555</p>
                                        </td>
                                        <td>
                                            <p>21/05/2021</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <p>중요</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold"><a href="#">70 Rockwell Lane Falls Church, VA 22041</a></p>
                                        </td>
                                        <td>
                                            <p>999</p>
                                        </td>
                                        <td>
                                            <p>15/04/2021</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <p>1</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold"><a href="#">13 Durham St. The Villages, FL 32162</a></p>
                                        </td>
                                        <td>
                                            <p>1</p>
                                        </td>
                                        <td>
                                            <p>04/05/2021</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <p>2</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold"><a href="#">38 Saxon Lane Mobile, AL 36605</a></p>
                                        </td>
                                        <td>
                                            <p>905</p>
                                        </td>
                                        <td>
                                            <p>30/04/2021</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <p>3</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold"><a href="#">3 Willow Street Chillicothe, OH 45601</a></p>
                                        </td>
                                        <td>
                                            <p>201</p>
                                        </td>
                                        <td>
                                            <p>02/02/2021</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <p>4</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold"><a href="#">35 Brickyard Rd. Marshalltown, IA 50158</a></p>
                                        </td>
                                        <td>
                                            <p>305</p>
                                        </td>
                                        <td>
                                            <p>14/01/2021</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="page-section mb-5 d-flex justify-content-end" style="position: relative;">
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
                <button class="btn btn-solid-default m-1" style="position: absolute">글쓰기</button>
            </nav>
        </div>
    </section>
    <!-- Notice Section End -->  
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
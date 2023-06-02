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

            <!-- Container-fluid starts-->
            <div class="page-body">
                <div class="title-header title-header-1">
                    <h5>상품 목록</h5>
                    <div class="col-lg-6 col-md-8 mx-6">
                        <div class="search-bar">
                            <div class="input-group search-bar w-100">
                                <input type="search" class="form-control" placeholder="Search">
                                <button class="input-group-text" id="basic-addon3">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div>
                                        <div class="table-responsive table-desi table-product">
                                            <table class="table table-1d all-package">
                                                <thead>
                                                    <tr>
                                                        <th>상품 이미지</th>
                                                        <th><b>이름/용량/색상</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>브랜드</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>재고</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>가격</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>판매유무</b> <i class="fa fa-fw fa-sort"></i></th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <img src="/admin/images/profile/4.jpg" class="img-fluid"
                                                                alt="">
                                                        </td>

                                                        <td>
                                                            <a href="javascript:void(0)">아이폰 14 256GB Black</a>
                                                            
                                                        </td>

                                                        <td>
                                                            <a href="javascript:void(0)">apple</a>
                                                        </td>

                                                        <td >
                                                            <div class="mx-5 col-lg-5">
                                                                <input class="form-control" type="number" value="1">
                                                            </div>
                                                        </td>

                                                        <td class="td-price">140</td>

                                                        <td class="td-cross">
                                                            <span class="lnr lnr-cross-circle"></span>
                                                        </td>

                                                       
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <img src="/admin/images/profile/2.jpg" class="img-fluid"
                                                                alt="">
                                                        </td>

                                                        <td>
                                                            <a href="javascript:void(0)">아이폰 14 512GB Black</a>
                                                            
                                                        </td>

                                                        <td>
                                                            <a href="javascript:void(0)">apple</a>
                                                        </td>

                                                        <td >
                                                            <div class="mx-5 col-lg-5">
                                                                <input class="form-control" type="number" value="2">
                                                            </div>
                                                        </td>

                                                        <td class="td-price">160</td>

                                                        <td class="td-check">
                                                            <span class="lnr lnr-checkmark-circle"></span>
                                                        </td>

                                                       
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <img src="/admin/images/profile/3.jpg" class="img-fluid"
                                                                alt="">
                                                        </td>

                                                        <td>
                                                            <a href="javascript:void(0)">갤럭시 s23 256GB black</a>
                                                        </td>

                                                        <td>
                                                            <a href="javascript:void(0)">samsung</a>
                                                        </td>

                                                        <td >
                                                            <div class="mx-5 col-lg-5">
                                                                <input class="form-control" type="number" value="1">
                                                            </div>
                                                        </td>

                                                        <td class="td-price">130</td>

                                                        <td class="td-check">
                                                            <span class="lnr lnr-checkmark-circle"></span>
                                                        </td>

                                                        
                                                    </tr>

                                                    
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div class="pagination-box">
                                    <nav class="ms-auto me-auto " aria-label="...">
                                        <ul class="pagination pagination-primary">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="javascript:void(0)"
                                                    tabindex="-1">Previous</a>
                                            </li>

                                            <li class="page-item active">
                                                <a class="page-link" href="javascript:void(0)">1</a>
                                            </li>

                                            <li class="page-item">
                                                <a class="page-link" href="javascript:void(0)">2 <span
                                                        class="sr-only">(current)</span>
                                                </a>
                                            </li>

                                            <li class="page-item">
                                                <a class="page-link" href="javascript:void(0)">3</a>
                                            </li>

                                            <li class="page-item">
                                                <a class="page-link" href="javascript:void(0)">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Container-fluid Ends-->

             <c:import url="adminFooter.jsp"></c:import>  
            </div>
        </div>
    </div>
    <!-- page-wrapper End-->

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

    <!-- Sidebar js -->
    <script src="/admin/js/config.js"></script>


    <!-- Plugins js -->
    <script src="/admin/js/sidebar-menu.js"></script>


    <!-- Theme js -->
    <script src="/admin/js/script.js"></script>
</body>

</html>
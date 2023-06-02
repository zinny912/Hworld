<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
	<meta charset="UTF-8">
    <c:import url="adminStyle.jsp"></c:import>  
</head>

<body>
     <c:import url="adminHeader.jsp"></c:import>  

            <!-- Invoice table Start -->
            <div class="page-body">
                <div class="title-header title-header-1">
                    
                    <h5>납부 목록</h5>
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
                                        <div class="table-responsive table-desi">
                                            <table class="table table-striped all-package">
                                                <thead>
                                                    <tr>
                                                        <th><b>No.</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>고객번호</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>납부날짜</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>납부금액</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>납부유무</b> <i class="fa fa-fw fa-sort"></i></th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <tr>
                                                        <td><a href="paymentDetail">1 (누르면 납부디테일 페이지 이동)</a> 
                                                        </td>
                                                        <td>34124</td>
                                                        <td>2023/05/15</td>
                                                        <td>302,000원</td>
                                                        <td class="td-cross">
                                                            <span class="lnr lnr-cross-circle"></span>
                                                        </td>

                                                       
                                                    </tr>

                                                    <tr>
                                                        <td>2</td>
                                                        <td>514985</td>
                                                        <td>2023/05/15</td>
                                                        <td>302,000원</td>
                                                        <td class="td-check">
                                                            <span class="lnr lnr-checkmark-circle"></span>
                                                        </td>

                                                       
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <!-- Pagination Box Start -->
                                <div class="pagination-box">
                                    <nav class="ms-auto me-auto " aria-label="...">
                                        <ul class="pagination pagination-primary">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="javascript:void(0)">Previous</a>
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
                                                <a class="page-link" href="javascript:void(0)">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- Pagination Box End -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Container-fluid Ends-->

               
                <c:import url="adminFooter.jsp"></c:import>  
            </div>
            <!-- Invoice table End -->
        </div>
        <!-- Page Body End-->

        
    </div>
    <!-- page-wrapper end-->

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

    <!-- Plugins JS -->
    <script src="/admin/js/sidebar-menu.js"></script>


    <!-- all checkbox select js -->
    <script src="/admin/js/checkbox-all-check.js"></script>

    <!-- Theme js -->
    <script src="/admin/js/script.js"></script>
</body>

</html>
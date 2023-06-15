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

            <!-- Order section Start -->
            <div class="page-body">
                <div class="title-header title-header-1">
                    
                    <h5>주문 목록</h5>
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

                <!-- Table Start -->
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
                                                        <th><b>주문번호</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>주문날짜</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>상태</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>총 가격</b> <i class="fa fa-fw fa-sort"></i></th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <tr>
 
                                                        <td>
                                                            <a href="orderDetail">+ 456-1245789 (누르면 디테일 페이지)</a>
                                                        </td>
                                                        <td>2023/10/04</td>

                                                        <td class="order-success">
                                                            <span>Success</span>
                                                        </td>

                                                        <td>$15</td>

                                                    </tr>

                                                    <tr>
                                                        
                                                        <td>+ 573-685572</td>

                                                        <td>2023/10/04</td>

                                                        <td class="order-success">
                                                            <span>Success</span>
                                                        </td>
                                                        <td>$15</td>

                                                    </tr>

                                        

                                                    <tr>

                                                        <td>
                                                            <a href="order-detail.html">+ 456-1245789</a>
                                                        </td>
                                                        <td>2023/10/04</td>


                                                        <td class="order-success">
                                                            <span>Success</span>
                                                        </td>

                                                        <td>$15</td>

                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <a href="order-detail.html">+ 456-1245789</a>
                                                        </td>
                                                        <td>2023/10/04</td>
                                                        <td class="order-cancle">
                                                            <span>Cancel</span>
                                                        </td>

                                                        <td>$15</td>

                                                        
                                                    </tr>
                                                    <tr>
                                                        <td>+ 057-3657895</td>
                                                        <td>2023/10/04</td>
                                                        <td class="order-cancle">
                                                            <span>Cancel</span>
                                                        </td>
                                                        <td>$15</td>
                                                        
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
						                    <li class="page-item ${pager.pre ? '' : 'disabled' }">
						                        <a class="page-link" href="memberList?page=${pager.startNum-1}&search=${pager.search}" aria-label="Previous">
						                            <span aria-hidden="true">
						                                <i class="fas fa-chevron-left"></i>
						                            </span>
						                        </a>
						                    </li>
						                    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
						   	                    <li class="page-item">
						                        	<a class="page-link" href="memberList?page=${i}&search=${pager.search}">${i}</a>
						                    	</li>
						                    </c:forEach>
						                    <li class="page-item ${pager.next ? '' : 'disabled' }">
						                        <a class="page-link" href="memberList?page=${pager.lastNum+1}&search=${pager.search}" aria-label="Next">
						                            <span aria-hidden="true">
						                                <i class="fas fa-chevron-right"></i>
						                            </span>
						                        </a>
						                    </li>
						                </ul>                
					            	</nav>
					            </div>
                                <!-- Pagination Box End -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Table End -->

                <!-- footer start-->
                <c:import url="adminFooter.jsp"></c:import>  
            </div>
            <!-- Order section End -->
        </div>
        <!-- Page Body End-->
    </div>
    <!-- page-wrapper End -->

   

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


    <!-- all checkbox select js -->
    <script src="/admin/js/checkbox-all-check.js"></script>

    <!-- Theme js -->
    <script src="/admin/js/script.js"></script>
</body>

</html>
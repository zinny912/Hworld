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
                    
                    <h5>회원 목록</h5>
                    <div class="col-lg-6 col-md-8 mx-6">
                        <div class="search-bar">
                            <div class="input-group search-bar w-100">
                                <input type="search" class="form-control" placeholder="Search">
                                <button class="input-group-text" id="basic-addon3">
                                    <i class="fas fa-search"></i>
                                </button>
                                <form class="d-inline-flex">
                                    <a href="memberAdd" class="align-items-center btn btn-theme">
                                        <i data-feather="plus-square"></i>Add New
                                    </a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- All User Table Start -->
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
                                                        <th><b>고객번호</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>이름</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>대표회선</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>이메일</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th>생년월일</th>
                                                        <th>주소</th>
                                                        <th><b>가입날짜</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>로그인날짜</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>상태</b> <i class="fa fa-fw fa-sort"></i></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>

                                                        <td>장하영</td>

                                                        <td> 010-1111-1111</td>

                                                        <td>EverettCGreen@rhyta.com</td>

                                                        <td>931005</td>

                                                        <td>서울시 금천구</td>

                                                        <td>23/01/04</td>

                                                        <td class="font-primary">1일 전</td>

                                                        <td class="order-success">
                                                            <span>일반</span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>2</td>

                                                        <td>이진희</td>

                                                        <td> 010-2222-2222</td>

                                                        <td>EverettCGreen@rhyta.com</td>

                                                        <td>931005</td>

                                                        <td>서울시 금천구</td>

                                                        <td>23/01/04</td>

                                                        <td class="font-primary">25일 전</td>

                                                        <td class="order-pending">
                                                            <span>휴면</span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>3</td>

                                                        <td>홍영우</td>

                                                        <td> 010-3333-3333</td>

                                                        <td>EverettCGreen@rhyta.com</td>

                                                        <td>931005</td>

                                                        <td>서울시 금천구</td>

                                                        <td>23/01/04</td>

                                                        <td class="font-primary">100일 전</td>

                                                        <td class="order-cancle">
                                                            <span>탈퇴</span>
                                                        </td>
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
                                                <a class="page-link" href="javascript:void(0)">Previous</a>
                                            </li>
                                            <li class="page-item active">
                                                <a class="page-link" href="javascript:void(0)">1 </a>
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
                            </div>
                        </div>
                    </div>
                </div>
                <!-- All User Table Ends-->

	<c:import url="adminFooter.jsp"></c:import>  
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
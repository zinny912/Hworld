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

            <!-- product review section start -->
            <div class="page-body">
                <div class="title-header title-header-1">
                    
                    <h5>일반 문의</h5>
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
                                <!-- Table Start -->
                                <div class="card-body">
                                    <div>
                                        <div class="table-responsive table-desi">
                                            <table class="user-table ticket-table review-table table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th><b>No.</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>카테고리</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>작성자</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th><b>작성날짜</b> <i class="fa fa-fw fa-sort"></i></th>
                                                        <th>제목</th>
                                                        <th><b>답변</b> <i class="fa fa-fw fa-sort"></i></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>01</td>
                                                        <td>서류</td>
                                                        <td>Maureen Biologist@gmail.com</td>
                                                        <td>2023/01/05</td>
                                                        <td>
                                                            <a href="generalInquiryDetail">문의 디테일 페이지로 이동</a>
                                                        </td>
                                                        <td class="td-check">
                                                            <span class="lnr lnr-checkmark-circle"></span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>02</td>
                                                        <td>계정</td>
                                                        <td>Caroline Harris@gmail.com</td>
                                                        <td>2023/10/05</td>
                                                        
                                                        <td>
                                                            <a href="">서류 문의합니다</a>
                                                        </td>                                                        <td class="td-check">
                                                            <span class="lnr lnr-checkmark-circle"></span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>03</td>
                                                        <td>요금제</td>
                                                        <td>Lucy Morile@gmail.com</td>
                                                        <td>2023/10/05</td>
                                                       
                                                        <td>
                                                            <a href="">문의합니다</a>
                                                        </td>                                                        <td class="td-check">
                                                            <span class="lnr lnr-checkmark-circle"></span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>04</td>
                                                        <td>청구/납부</td>
                                                        <td>Jennifer Straight@gmail.com</td>
                                                        <td>2023/10/05</td>
                                                        
                                                        <td>
                                                            <a href="">문의합니다</a>
                                                        </td>                                                        <td class="td-cross">
                                                            <span class="lnr lnr-cross-circle"></span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>05</td>
                                                        <td>불만</td>
                                                        <td>Kevin Millett@gmail.com</td>
                                                        <td>2023/10/05</td>
                                                        
                                                        <td>
                                                            <a href="">문의합니다</a>
                                                        </td>                                                        <td class="td-check">
                                                            <span class="lnr lnr-checkmark-circle"></span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>06</td>
                                                        <td>환불</td>
                                                        <td>czxc@gmail.com</td>
                                                        <td>2023/10/05</td>
                                                       
                                                        <td>
                                                            <a href="">문의합니다</a>
                                                        </td>                                                        <td class="td-cross">
                                                            <span class="lnr lnr-cross-circle"></span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>07</td>
                                                        <td>서류</td>
                                                        <td>Kevin Millett@gmail.com</td>
                                                        <td>2023/10/05</td>
                                                        
                                                        <td>
                                                            <a href="">문의합니다</a>
                                                        </td>                                                        <td class="td-cross">
                                                            <span class="lnr lnr-cross-circle"></span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>08</td>
                                                        <td>요금제</td>
                                                        <td>Dillon Bradshaw@gmail.com</td>
                                                        <td>2023/10/05</td>
                                                        
                                                        <td>
                                                            <a href="">문의합니다</a>
                                                        </td>                                                        <td class="td-check">
                                                            <span class="lnr lnr-checkmark-circle"></span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>09</td>
                                                        <td>서류</td>
                                                        <td>Lorna Bonner@gmail.com</td>
                                                        <td>2023/10/05</td>
                                                        
                                                        <td>
                                                            <a href="">문의합니다</a>
                                                        </td>                                                        <td class="td-cross">
                                                            <span class="lnr lnr-cross-circle"></span>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>10</td>
                                                        <td>기타</td>
                                                        <td>Richard Johnson@gmail.com</td>
                                                        <td>2023/10/05</td>
                                                        
                                                        <td>
                                                            <a href="">문의합니다</a>
                                                        </td>                                                        <td class="td-check">
                                                            <span class="lnr lnr-checkmark-circle"></span>
                                                        </td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Table End -->

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

                <!-- Container-fluid Ends-->
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


    <!-- Sidebar js-->
    <script src="/admin/js/config.js"></script>

    <!-- Plugins JS -->
    <script src="/admin/js/sidebar-menu.js"></script>
	

    <!--Dropzon js -->
    <script src="/admin/js/dropzone/dropzone.js"></script>
    <script src="/admin/js/dropzone/dropzone-script.js"></script>

    <!-- Theme js -->
    <script src="/admin/js/script.js"></script>
  
 <c:import url="adminFooter.jsp"></c:import>      
</body>

</html>
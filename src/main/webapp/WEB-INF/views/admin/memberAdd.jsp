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

            <!-- Page Sidebar Start -->
            <div class="page-body">
                <div class="title-header">
                    <h5>회원 추가</h5>
                </div>
                <!-- New User start -->
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link active" id="pills-home-tab"
                                                        data-bs-toggle="pill" data-bs-target="#pills-home"
                                                        type="button">회원 정보</button>
                                                </li>
                                            </ul>

                                            <div class="tab-content" id="pills-tabContent">
                                                    <form class="theme-form theme-form-2 mega-form radio-section">
                                                        <div class="row">
                                                            <div class="mb-4 row align-items-center">
                                                                <label
                                                                    class="form-label-title col-lg-2 col-md-3 mb-0">이름</label>
                                                                <div class="col-md-9 col-lg-9">
                                                                    <input class="form-control" type="text">
                                                                </div>
                                                            </div>

                                                            <div class="mb-4 row align-items-center">
                                                                <label
                                                                    class="col-lg-2 col-md-3 col-form-label form-label-title">이메일 (ID)</label>
                                                                <div class="col-md-9 col-lg-9">
                                                                    <input class="form-control" type="email">
                                                                </div>
                                                            </div>

                                                            <div class="mb-4 row align-items-center">
                                                                <label
                                                                    class="col-lg-2 col-md-3 col-form-label form-label-title">비밀번호</label>
                                                                <div class="col-md-9 col-lg-9">
                                                                    <input class="form-control" type="password">
                                                                </div>
                                                            </div>

                                                            <div class="mb-4 row align-items-center">
                                                                <label
                                                                    class="col-lg-2 col-md-3 col-form-label form-label-title">비밀번호 확인</label>
                                                                <div class="col-md-9 col-lg-9">
                                                                    <input class="form-control" type="password">
                                                                </div>
                                                            </div>
                                                            <label class="col-md-2 mb-0 form-label-title">관리자 권한</label>
                                                            <div class="col-md-9">
                                                                    <label>
                                                                        <input type="radio" name="opinion" >
                                                                        <i></i>
                                                                        <span>관리자</span>
                                                                    </label>
    
                                                                    <label>
                                                                        <input type="radio" name="opinion" checked/>
                                                                        <i></i>
                                                                        <span>일반 사용자</span>
                                                                    </label>
                                                        </div>
                                                            </form>
                                                        </div>
                                                    </div>

                                                <div class="card-footer text-end border-0 pt-0">
                                                    <button class="btn btn-primary me-3" type="submit">추가</button>
                                                    <button class="btn btn-outline-primary" type="button">취소</button>
                                                </div>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                </div>
                <!-- New User End -->

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


    <!-- Sidebar js-->
    <script src="/admin/js/config.js"></script>

    <!-- Plugins JS -->
    <script src="/admin/js/sidebar-menu.js"></script>


    <!--Dropzon js -->
    <script src="/admin/js/dropzone/dropzone.js"></script>
    <script src="/admin/js/dropzone/dropzone-script.js"></script>

    <!-- Theme js -->
    <script src="/admin/js/script.js"></script>
</body>

</html>
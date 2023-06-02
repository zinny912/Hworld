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
 		<c:import url="adminFooter.jsp"></c:import>  
    
    </div>
    <!-- page-wrapper End-->

    

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


    <!--Dropzon start-->
    <script src="/admin/js/dropzone/dropzone.js"></script>
    <script src="/admin/js/dropzone/dropzone-script.js"></script>


    <!-- Plugins JS Ends-->

    <!-- Theme js-->
    <script src="/admin/js/script.js"></script>
</body>

</html>
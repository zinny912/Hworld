<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>

    <style>
        .tracker-table .table tbody tr td p {
            line-height: 0.7;
            margin: 5px 0px;
        }

        .tab-content .tab-pane {
            padding-top: 10px;
        }

        .tab-content .tab-pane .tracker-table .table .table-head td{
            text-align: left; 
            padding-left: 60px;
        }

        .tab-content .tab-pane .tracker-table .table .fa-star{
            color: var(--theme-color); 
            font-size: 1%; 
            line-height: 1.3;
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
                            <li class="breadcrumb-item active" aria-current="page">Contact us</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->

	<section class="section-b-space">
        <div class="container">
            <div class="row">

				<div class="material-details">
                    <div class="title title1 title-effect mb-1 title-left">
                        <h2>공지사항</h2>
                    </div>
                </div>

				<!-- 문의 작성 테이블 Section Start -->
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="account">
						<div class="row g-4">
							<div class="col-12 overflow-visible">
								<div class="tracker-table pt-0" >  
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<th scope="row" class="text-center align-middle h-100" >
														<div class="d-flex">
															<h6 class="mx-2 fw-bold">제목</h6>
															<i class="fa fa-star" ></i>
														</div>
													</th>
													<td colspan="5">
														<div class="col-md-12">
															<h6 class="mx-2 fw-bold">${vo.title}</h6>
														</div>
													</td>
												</tr>
			
												<tr>
													<th scope="row" class="text-center align-middle h-100" >
														<div class="d-flex">
															<h6 class="mx-2 fw-bold">내용</h6>
															<i class="fa fa-star" ></i>
														</div>
													</th>
													<td colspan="5">
														<div class="col-md-12">
															<h6>${vo.contents}</h6>
														</div>
													</td>
												</tr>
			

			
												<tr>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- <div class="col-md-12 d-flex justify-content-center me-5 my-lg-5">
								<button class="btn btn-solid-default mx-2 " type="submit">작성 완료</button>
								<button class="btn btn-solid-default " type="button">취소</button>
							</div> -->
						</div>
					</div>
					
			</div>
		</div>
	</div>

<!-- Category Tab Section end -->

            </div>
            

        </div>
    </section>
    <!-- Notice Section End -->  


    <!-- Quick view modal start -->
    <div class="modal fade quick-view-modal" id="quick-view">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row gy-4">
                        <div class="col-lg-6">
                            <div class="quick-view-image">
                                <div class="quick-view-slider">
                                    <div>
                                        <img src="/assets/images/electronics/product/1.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/8.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/9.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/8.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                </div>
                                <div class="quick-nav">
                                    <div>
                                        <img src="/assets/images/electronics/product/1.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/8.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/9.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/8.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-right">
                                <h2 class="mb-2">Smart Watch ERT2</h2>
                                <h6 class="font-light mb-1">Model LR274</h6>
                                <ul class="rating">
                                    <li>
                                        <i class="fas fa-star theme-color"></i>
                                    </li>
                                    <li>
                                        <i class="fas fa-star theme-color"></i>
                                    </li>
                                    <li>
                                        <i class="fas fa-star theme-color"></i>
                                    </li>
                                    <li>
                                        <i class="fas fa-star"></i>
                                    </li>
                                    <li>
                                        <i class="fas fa-star"></i>
                                    </li>
                                </ul>
                                <div class="price mt-3">
                                    <h3>$20.00</h3>
                                </div>
                                <div class="color-types">
                                    <h4>colors</h4>
                                    <ul class="color-variant mb-0">
                                        <li class="bg-half-light selected"></li>
                                        <li class="bg-light1"></li>
                                        <li class="bg-blue1"></li>
                                        <li class="bg-black1"></li>
                                    </ul>
                                </div>
                                <div class="product-details">
                                    <h4>product details</h4>
                                    <ul>
                                        <li>
                                            <span class="font-light">Display type :</span> Analog
                                        </li>
                                        <li>
                                            <span class="font-light">Mechanism:</span> Quartz
                                        </li>
                                        <li>
                                            <span class="font-light">Warranty:</span> 1 year
                                        </li>
                                    </ul>
                                </div>
                                <div class="product-btns">
                                    <button type="button" class="btn btn-solid-default btn-sm"
                                        data-bs-dismiss="modal">Add to cart</button>
                                    <button type="button" class="btn btn-solid-default btn-sm"
                                        data-bs-dismiss="modal">View details</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick view modal end -->
<c:import url="../temp/footer.jsp"></c:import>
<script type="text/javascript">
	$('.tab-pane').click(function(){
	    $('.tab-pane').removeClass('show active');
	    $(this).addClass('show active');
	})
</script>
</body>

</html>
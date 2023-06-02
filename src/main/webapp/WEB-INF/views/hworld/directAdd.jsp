<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>상품등록 페이지</title>
 <style>
    .boxone {
    width:50%;
    padding-right: 5%;
    }
    .boxtwo {   
    width:50%;
    padding-left: 5%;
    }

    .login-section {
        background-color: #fff;
    }

    .box{
        border:1px solid black;
   
    }
    
    .modal-dialog .modal-content{
        width: 70%;
        margin-left:15%;
    }

</style>
</head>

<body class="theme-color2 light ltr">
<c:import url="../temp/header.jsp"></c:import>
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
                    <h3>상품등록 페이지</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">상품 > 상품등록</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->

    <!-- Shop Section start -->
    <section class="section-b-space">
        <div class="container">
            <div class="row g-4 justify-content-center">
                <div class="col-lg-6" >
                    <h3 class="mb-3 fw-bold">상품</h3>
                    <form class="needs-validation">
                        <div class="row g-4">
                            <!-- 상품 정보 -->
                            <div class="col-md-6">
                                <label for="validationCustom04" class="form-label" >카테고리</label>
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="">휴대폰</option>
                                        <option>액세서리</option>
                                    </select>
                                </div>
                            </div> 
                            <div class="col-md-6">
                                <label for="validationCustom04" class="form-label" >브랜드</label>
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="">삼성</option>
                                        <option>애플</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label for="fname" class="form-label">상품명</label>
                                <input type="text" class="form-control" id="fname" placeholder="상품명">
                            </div>
                            <div class="col-md-6">
                                <label for="fname" class="form-label">제품명</label>
                                <input type="text" class="form-control" id="fname" placeholder="ex)P01BS 색상 용량은 아래에서 선택하면">
                            </div>
                           
                            <!-- 출고가 -->
                            <div class="col-md-3">
                                <label for="validationCustom04" class="form-label">색상</label>
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="">없음</option>
                                        <option>white</option>
                                        <option>gray</option>
                                        <option>black</option>
                                    </select>
                                </div>
                            </div> 
                            <div class="col-md-3">
                                <label for="validationCustom04" class="form-label">용량</label>
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="">없음</option>
                                        <option>256GB</option>
                                        <option>512GB</option>
                                    </select>
                                </div>
                            </div> 
                            <div class="col-md-3">
                                <label for="lnum" class="form-label">상품금액</label>
                                <input type="text" class="form-control" id="fnum" value="원">
                            </div>
                            <div class="col-md-3">
                                <label for="validationCustom04" class="form-label">재고 수량</label>
                                <input type="text" class="form-control" id="fnum" value="개">
                            </div> 
                            <div class="col-md-3">
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="">없음</option>
                                        <option>white</option>
                                        <option>gray</option>
                                        <option>black</option>
                                    </select>
                                </div>
                            </div> 
                            <div class="col-md-3">
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="">없음</option>
                                        <option>256GB</option>
                                        <option>512GB</option>
                                    </select>
                                </div>
                            </div> 
                            
                            <div class="col-md-3">
                                <input type="text" class="form-control" id="fnum" value="원">
                            </div>
                            <div class="col-md-3">
                                <input type="text" class="form-control" id="fnum" value="개">
                            </div> 
                            <div class="col-md-3">
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="">없음</option>
                                        <option>white</option>
                                        <option>gray</option>
                                        <option>black</option>
                                    </select>
                                </div>
                            </div> 
                            <div class="col-md-3">
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="">없음</option>
                                        <option>256GB</option>
                                        <option>512GB</option>
                                    </select>
                                </div>
                            </div> 
                            
                            <div class="col-md-3">
                                <input type="text" class="form-control" id="fnum" value="원">
                            </div>
                            <div class="col-md-3">
                                <input type="text" class="form-control" id="fnum" value="개">
                            </div> 
                                <div class="mb-2">
                                    <label for="validationCustom04" class="form-label">썸네일 이미지</label>
                                    <input class="form-control" type="file" id="formFile">
                                </div>
                                <div class="mb-3">
                                    <label for="validationCustom04" class="form-label">상품 이미지</label>
                                    <input class="form-control" type="file" id="formFile">
                                </div>
            
                            <!-- 상세정보 서머노트하자 -->
                            <div class="col-md-12">
                                <label for="fnum" class="form-label">상세정보</label>
                                <textarea class="form-control col-md-12" name="" id="" cols="100" rows="10" readonly> 서머노트로 상세정보 입력할예정</textarea>
                            </div>

                            <!-- 확인버튼 -->
                            <div class="col-12 d-flex justify-content-center">
                                <button class="btn btn-solid-default mx-auto" id="btn2">등록하기</button>
                            </div>     
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <!-- Shop Section end -->       
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
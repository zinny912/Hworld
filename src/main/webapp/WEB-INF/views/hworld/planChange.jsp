<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
 	<c:import url="../temp/style.jsp"></c:import>   
    <title>요금제변경</title>
<style>

.flex-container {
        display: flex;
        align-items: center;
        width: 100%;
        overflow-x: hidden;
        overflow-y: hidden;
    }

    .flex-container > * {
        margin-right: 0px;
        width: 100%;
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
                    <h3>요금제 변경</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">기존 H world를 이용하고 계셨던 고객</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->

    <!-- Contact Section Start -->
    <section class="contact-section">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-12">
                    <div class="materialContainer">
                        <div class="material-details">
                            <div class="title title1 title-effect mb-1 title-left">
                                <h2>5G 프리미어 (변경할 요금제 이름)</h2>
                                <p class="fs-3 w-100 text-center">000 고객님, 사용중인 상품과 변경하실 상품을 확인하세요.</p>
                            </div>
                        </div>
                    <div class="">
                    <div class="row mb-5 justify-content-center">
                        <div class="col-lg-5 text-center">
                            <div class="contact-details rounded-3 mt-3 mb-3 ">
                                <div class="container">
                                    <button class="btn rounded-pill m-1 btn-outline-secondary mb-3"> <h6>사용중인 요금상품</h6></button>
                                    <h2 class="fw-bolder">5G 기존 요금제명</h2>
                                    <div class="container">
                                        <p class="font-light" >010-0000-0000 </p>
                                    </div>
                                    <div class="contact-box justify-content-center" style="border-bottom:2px solid; border-color:#fff; padding-bottom:20px;">
                                        <div class="mx-4">
                                            <img class="mb-2"src="/assets/images/zinny/5g.png">
                                            <h4>무제한</h4>
                                        </div>   
                                        <div class="mx-4">
                                            <img class="mb-2"src="/assets/images/zinny/phone.png">
                                            <h4>무제한</h4>
                                        </div> 
                                        <div class="mx-4">
                                            <img class="mb-2"src="/assets/images/zinny/message.png">
                                            <h4>무제한</h4>
                                        </div> 
                                    </div>
        
                                    <div class="contact-box justify-content-center">
                                        <div class="contact-title text-center">
                                            <div class="flex-container">
                                            <p style="margin-right:-15px; font-size:17px;">월</p>
                                                <h2 class="fs-1 mb-0 theme-color" >55,000</h2>
                                            <p style="margin-left:-15px; font-size:17px;">원</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-2 d-flex justify-content-center align-items-center" style="padding:0; margin-left:-120px; margin-right:-120px; z-index: 100;">
                            <img class="img-fluid" style="max-width: 60%;" src="/assets/images/zinny/right-arrowp.png">
                        </div>
                            <div class="col-lg-5 text-center">
                                <div class="contact-details rounded-3 mt-3 mb-3" >
                                    <div class="container">
                                        <button class="btn m-1 rounded-pill default-theme text-light mb-3"> <h6>변경 요금상품</h6></button>
                                        <h2 class="fw-bolder">5G 프리미어</h2>
                                        <div class="container">
                                            <p class="font-light" >010-0000-0000 </p>
                                        </div>
                                        <div class="contact-box justify-content-center" style="border-bottom:2px solid; border-color:#fff; padding-bottom:20px;">
                                            <div class="mx-4">
                                                <img class="mb-2"src="/assets/images/zinny/5g.png">
                                                <h4>무제한</h4>
                                            </div>   
                                            <div class="mx-4">
                                                <img class="mb-2"src="/assets/images/zinny/phone.png">
                                                <h4>무제한</h4>
                                            </div> 
                                            <div class="mx-4">
                                                <img class="mb-2"src="/assets/images/zinny/message.png">
                                                <h4>무제한</h4>
                                            </div> 
                                        </div>
            
                                        <div class="contact-box justify-content-center">
                                            <div class="contact-title text-center">
                                                <div class="flex-container">
                                                <p style="margin-right:-15px; font-size:17px;">월</p>
                                                    <h2 class="fs-1 theme-color mb-0">88,000</h2>
                                                <p style="margin-left:-15px; font-size:17px;">원</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="row mb-5 justify-content-center">
                                <div class="col-lg-10">
                                    <div class="contact-details rounded-3 mt-3 mb-3">
                                        <div class="container">
                                            
                                            <h2 class="fw-bolder"><img class="mb-1"src="/assets/images/zinny/warning.png">
                                                이것만은 꼭 확인하세요</h2>
                                            <div class="container">
                                                <p class="font-light fs-6 " >	
                                                    □ 요금제 변경일을 기준으로 1개월 내에는 다른 요금제로 변경이 불가합니다. </p>
                                                <p class="font-light fs-6 " > 	
                                                    □ 요금제의 기본제공 음성/문자/데이터 혜택은 월 중 요금제 변경 시 실제 이용기간을 기준으로 일할 계산하며, 초과 사용량에 대해서는 다음달 청구요금에 반영됩니다.
                                                <br>초과 과금 예시)
                                                <br>band 데이터 1.2G 사용 고객이 총 900MB의 데이터 사용 후 16일에 요금제 변경시(30일 기준)
                                                <br>- 변경 전 사용일 (1~15일) 기준 제공량 : 약 600MB (= 1.2GB X 15일/30일)
                                                <br>- 초과사용량 : 300MB (= 사용량 900MB - 일할 제공량 600MB)
                                                => 초과 사용한 데이터 300MB에 대해 종량 요율(22.528원/MB)로 과금 (단, 최대 19,800원)</p>
                                            </div>
                                            <div class="form-check ps-0 custome-form-check justify-content-center">
                                                <input class="checkbox_animated check-it" type="checkbox" id="flexCheckDefault1">
                                                <label class="form-check-label fw-bolder fs-6" for="flexCheckDefault1">위 안내사항을 확인했습니다.</label>
                                               
                                            </div>
                    </div>
                </div>
            </div>
        </div>                  
    </section>
    <div class="container">
    <div class="col-12 mb-3 container justify-content-center" style="width: 17.66667%">
    <button onclick="location.href = 'zsuccess_modify.html';" type="button" class="btn rounded-3 btn-solid-default">변경하기</button>
    <button onclick="location.href = '#';" type="button" class="btn rounded-3 btn-secondary">취소</button>
    </div>  
    </div>
    <!-- Contact Section End -->    
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
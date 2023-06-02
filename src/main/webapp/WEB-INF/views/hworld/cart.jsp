<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
 	<c:import url="../temp/style.jsp"></c:import>
    <title>Cart Page</title>
    <style>
        .cart-section .cart-table {
            border-top: 1px solid #232323;
        }
        .cart-section .cart-table thead th .custome-form-check{
            padding : 0px 0px 8px;
            
        }

        .cart-section .cart-table thead th {
            padding : 20px 8px;
            background-color: #fff;
        }

        .cart-section .cart-table tbody td {
            min-width: 0px;   
        }

        .cart-section .custome-form-check {
            padding : 0px 0px;
        }


        .cart-section .cart-table .cart-content-wrap{
            padding: 25px 8px;
            color: #232323;
            text-align: center;
            vertical-align: baseline;
        }

        .cart-section .cart-table .cart-content-wrap h6{
            color: #232323;
            font-weight: 600;
            box-sizing: border-box;
            border: 1px solid #7e7e7e;
            text-align: center;
            font-size: smaller;
        }
        
        .cart-section .cart-table .cart-content-wrap h2 { 
            text-align: left;
        }
        .cart-section .cart-table .cart-content-wrap h2 a{
            font-size: x-large;
            color: #232323;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 700;
            text-align: left;
        }

        .cart-section .cart-table .cart-content-wrap h5 {
            text-align: left;
            margin-left:5px;
        }
        .cart-section .cart-table .cart-totalPrice-row .cart-totalPrice-wrap h5{
            margin : auto 0px;
        }
        .cart-section .cart-table .cart-totalPrice-row .cart-totalPrice-wrap h2{
            margin : auto 0px;
            font-size: x-large;
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
                    <h3>장바구니</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Cart</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->
 
    <!-- Cart Section Start -->
    <section class="d-flex justify-content-center cart-section section-b-space" >
        <div class="col-lg-6 " >
                <div class="table-responsive ">
                    <table class="table">
                        <tbody>
                        <div class="cart-allCheck-wrap" style="margin-left:57px;">                            
                            <div class="qty-box d-flex">
                                <div class="form-check custome-form-check">
                                    <input class="checkbox_animated check-it" type="checkbox" id="flexCheckDefault">
                                </div>
                            <div class="d-flex" style="margin-left:10px;">
                                <a class="text-decoration-underline theme-color d-block text-capitalize mt-1">전체 선택</a>
                                <h6 class="text-center mt-2" style="color: gray;"> &nbsp;&nbsp;|&nbsp;&nbsp; </h6>
                                <a class="text-decoration-underline theme-color d-block text-capitalize mt-1">선택 삭제</a>
                            </div>  
                        </div>
                        </tbody>
                    </table>
                <div class="col-sm-12 table-responsive mt-2" >
                    <table class="table cart-table" style="border-top:1px solid lightgray;">
                        <tbody >
                            <tr>
                                <td class="cart-check-wrap">
                                        <div class="qty-box d-flex justify-content-end" >
                                            <div class="form-check custome-form-check">
                                                <input class="checkbox_animated check-it" type="checkbox"
                                                    id="flexCheckDefault10">
                                            </div>
                                        </div>
                                </td>
                                <td class="cart-content-wrap" >
                                    <div class="">
                                        <div class="col-md-3">
                                            <h6 class="pt-1 pb-1">애플코리아</h6>
                                        </div>
                                        <div class="col-md-12 mt-3 mb-4">
                                            <h2 class="fw-bold"><a href="product-left-sidebar.html">Yellow 케이스</a></h2> 
                                        </div>
                                        <div class="col-md-10 d-flex ">
                                            <div class="col-md-3" style="color: #7e7e7e;">
                                                <p>선택한 옵션</p>
                                            </div>
                                            <div class="col-md-7" style="color: black;">
                                                <h5>스톰 블루</h5>
                                            </div>                                            
                                        </div>
                                    </div>            
                                </td>
                                <td class="pt-3">
                                    <!-- 수량 버튼 만들어봄 -->
                                    <div  >
                                        <div class=" d-flex quantity-wrapper " style="padding:5px 0px; justify-content: center;">
                                            <button class="btn quantity-left-minus" style="height:5px; width:5px; padding:10px; margin-top:-6px; ">-</button>
                                            <span class="input-wrapper">
                                                <input type="text" class="input-number text-center" style="width: 35px; padding:5px 5px; border:1px solid #c7c7c5; border-radius: 5px;"  value="1">
                                            </span>
                                            <button class="btn quantity-right-plus" style="height:5px; margin-top:-6px; padding:10px 5px; ">+</button>
                                        </div>
                                    </div> 
                                </td>
                                <td>
                                    <h2 class="td-color fw-bold">12,000원</h2>
                                </td>
                                <td class="pt-5" style="width: 10%; vertical-align: top; ">
                                </td>
                            </tr>
                            <tr>
                                <td class="cart-check-wrap">
                                        <div class="qty-box d-flex justify-content-end" >
                                            <div class="form-check custome-form-check">
                                                <input class="checkbox_animated check-it" type="checkbox"
                                                    id="flexCheckDefault10">
                                            </div>
                                        </div>
                                </td>
                                <td class="cart-content-wrap" >
                                    <div class="">
                                        <div class="col-md-3">
                                            <h6 class="pt-1 pb-1">애플코리아</h6>
                                        </div>
                                        <div class="col-md-12 mt-3 mb-4">
                                            <h2 class="fw-bold"><a href="product-left-sidebar.html">Yellow 케이스</a></h2> 
                                        </div>
                                        <div class="col-md-10 d-flex ">
                                            <div class="col-md-3" style="color: #7e7e7e;">
                                                <p>선택한 옵션</p>
                                            </div>
                                            <div class="col-md-7" style="color: black;">
                                                <h5>스톰 블루</h5>
                                            </div>                                            
                                        </div>
                                    </div>            
                                </td>
                                <td class="pt-3">
                                    <!-- 수량 버튼 만들어봄 -->
                                    <div  >
                                        <div class=" d-flex quantity-wrapper " style="padding:5px 0px; justify-content: center;">
                                            <button class="btn quantity-left-minus" style="height:5px; width:5px; padding:10px; margin-top:-6px; ">-</button>
                                            <span class="input-wrapper">
                                                <input type="text" class="input-number text-center" style="width: 35px; padding:5px 5px; border:1px solid #c7c7c5; border-radius: 5px;"  value="1">
                                            </span>
                                            <button class="btn quantity-right-plus" style="height:5px; margin-top:-6px; padding:10px 5px; ">+</button>
                                        </div>
                                    </div> 
                                </td>
                                <td>
                                    <h2 class="td-color fw-bold">12,000원</h2>
                                </td>
                                <td class="pt-5" style="width: 10%; vertical-align: top; ">
                                </td>
                            </tr>
                            
                        </tbody>
                        <tbody>
                            <tr class="cart-totalPrice-row">
                                <td class="cart-totalPrice-wrap" colspan="7">
                                    <div class="d-flex justify-content-end">
                                        <h5 class="me-5  fw-bold">총 결제 예상금액</h5>
                                        <h2 class="mx-5 fw-bold">19,800원</h2>
                                        <button class="btn btn-solid-default btn-spacing" type="button">총 ?건 주문하기</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>    
                </div>
            </div>
        </div>
    </section>
    <!-- Cart Section End -->    
    <!-- 변경하기 모달창 start -->
<div class="modal fade quick-view-modal" id="optionmo">
    <div class="modal-dialog modal-sm modal-dialog-centered col-12">
        <div class="modal-content">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            <div class="modal-body">
                <div class="row gy-4">
                                    <div class="col-12">
                                        <div class="product-right">
                                            <div class="size-detail">
                                                <h2 class="mb-3 fw-bolder">옵션 선택</h2>
                                                <ul class="nav border-0" style="color:black;">
                                                    <li class="nav-item" >
                                                    <a class="nav-link active" style="color:black;" data-bs-toggle="tab" href="#tab-1">색상</a>
                                                    </li>
                                                </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane fade show active" id="tab-1">
                                                            <div class="row col-md-12 my-3 mx-3">
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="credit">
                                                                    <label class="form-check-label" for="credit">빨강</label>
                                                                </div>
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="debit">
                                                                    <label class="form-check-label" for="debit">파랑</label>
                                                                </div>
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="paypal">
                                                                    <label class="form-check-label" for="paypal">노랑</label>
                                                                </div>
                                                                <div class="form-check custome-radio-box">
                                                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="paypal">
                                                                    <label class="form-check-label" for="paypal">초록</label>
                                                                </div> 
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                        <div class="col-12 justify-content-end">    
                                            <div class="product-btns">
                                                <button onclick="location.href='#';" type="button" class="btn btn-solid-default btn-sm text-center"
                                                    data-bs-dismiss="modal">변경하기</button>
                                            </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

</div>
<!-- 변경하기 모달창 end -->

    <script>
        $(".quantity-wrapper .quantity-right-plus").on("click", function () {
            var $qty = $(this).siblings(".input-wrapper").find(".input-number");
            var currentVal = parseInt($qty.val(), 10);
            if (!isNaN(currentVal)) {
                $qty.val(currentVal + 1);
            	}
            });

            $(".quantity-wrapper .quantity-left-minus").on("click", function () {
            var $qty = $(this).siblings(".input-wrapper").find(".input-number");
            var currentVal = parseInt($qty.val(), 10);
            if (!isNaN(currentVal) && currentVal > 1) {
                $qty.val(currentVal - 1);
            	}
            });
    </script>
<c:import url="../temp/footer.jsp"></c:import>    
</body>

</html>
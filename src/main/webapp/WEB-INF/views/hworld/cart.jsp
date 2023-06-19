<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
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
        <div class="col-lg-8" >
                <div class="table-responsive d-flex">
                    <table class="table cart-table" style="border-top:0px">
                        <tbody >
                        	<tr>
                        	<td>
                            <div class="form-check custome-form-check">
                                <input class="checkbox_animated check-it" type="checkbox" id="flexCheckDefault"  checked="checked">
                            </div>  
                        	</td>
                        	<td>
                                <a class="text-decoration-underline theme-color d-flex" style="margin-left: -15%">선택 삭제</a>
                        	</td>
                        	<td>
                        	</td>
                        	<td>
                        	</td>
                        	
                        	</tr>
                <form action="../order" method="get" id="cartForm">
                    <c:forEach items="${cartInfo}" var="cart">
                            <tr>
                                <td class="cart-check-wrap">
                                        <div class="qty-box d-flex" >
                                            <div class="form-check custome-form-check">
                                                <input class="checkbox_animated check-it" checked="checked" type="checkbox"
                                                    id="flexCheckDefault10">
                                            </div>
                                        </div>
                                        <input type="text" class="cartAmount" name="orderAmount" value="" hidden="">
                                        <input type="text" class="directCode" name="directCode" value="" hidden="">
                                        <input type="text" class="directName" name="directName" value="" hidden="">
                                        <input type="text" class="directPrice" name="directPrice" value="" hidden="">
                                        <input type="text" class="calPrice" name="calPrice" value="" hidden="">
                                        
                                
                                </td>
                                <td class="cart-content-wrap">
                                        <div class="col-md-2">
											<h6 class="pt-1 pb-1">
											    <c:choose>
											        <c:when test="${cart.brandCode == 'S'}">
											            삼성
											        </c:when>
											        <c:when test="${cart.brandCode == 'A'}">
											            애플
											        </c:when>
											        <c:when test="${cart.brandCode == '0'}">
											            기타
											        </c:when>
											        <c:otherwise>
											            기타
											        </c:otherwise>
											    </c:choose>
											</h6>
                                        </div>
                                        <div class="mt-3 mb-3">
                                            <h2 class="fw-bold"><a href="product-left-sidebar.html">${cart.directName}</a></h2> 
                                        </div>
                                        <div class="d-flex">
                                            <div class="" style="color: #7e7e7e;">
                                                <p>선택한 옵션</p>
                                            </div>
                                            <div class="" style="color: black;">
                                                <h5>${cart.colorCode}</h5>
                                            </div>                                            
                                        </div>
                                </td>
                                <td class="pt-3">
                                    <!-- 수량 버튼 만들어봄 -->
                                    <div>
                                        <div class=" d-flex quantity-wrapper" style="padding:5px 0px; justify-content: start;">
                                            <button type="button" class="btn quantity-left-minus" style="height:5px; width:5px; padding:10px; margin-top:-6px; ">-</button>
                                            <span class="input-wrapper">
                                                <input type="text" class="input-number text-center" style="width: 35px; padding:5px 5px; border:1px solid #c7c7c5; border-radius: 5px;"  value="${cart.cartAmount}">
                                            </span>
                                            <button type="button" class="btn quantity-right-plus" style="height:5px; margin-top:-6px; padding:10px 5px; ">+</button>
                                        </div>
                                    </div> 
                                </td>
                                
                                <td>
									<h2 class="td-color fw-bold" data-price="${cart.directPrice}">
									  <fmt:formatNumber value="${cart.directPrice * cart.cartAmount}" pattern="#,### 원" />
									</h2>

                                </td>
                                
                            </tr>
                        </c:forEach>
                            
                        </form>
                        </tbody>
                        <tbody >
                            <tr class="cart-totalPrice-row">
                                <td class="cart-totalPrice-wrap" colspan="7">
                                    <div class="d-flex justify-content-end">
                                        <h5 class="fw-bold">총 결제 금액</h5>
                                        <h2 class="mx-5 fw-bold">${cart.directPrice * cart.cartAmount }</h2>
                                        <button class="btn btn-solid-default btn-spacing" id="orderBtn" type="button">주문하기</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>    
                </div>
            </div>
    </section>
    <!-- Cart Section End -->    




    <script>
 // 수량 버튼에 대한 이벤트 핸들러 등록
    document.addEventListener('DOMContentLoaded', function() {
      var quantityInputs = document.querySelectorAll('.input-number');
      var priceElements = document.querySelectorAll('.td-color');
      var totalPriceElement = document.querySelector('.cart-totalPrice-row h2');
   // 가격 업데이트 함수
      function updatePrice() {
        for (var i = 0; i < quantityInputs.length; i++) {
          var quantityInput = quantityInputs[i];
          var priceElement = priceElements[i];
          var initialPrice = parseInt(priceElement.getAttribute('data-price'));
          var currentQuantity = parseInt(quantityInput.value);
          var newPrice = initialPrice * currentQuantity;
          priceElement.innerText = new Intl.NumberFormat('ko-KR').format(newPrice) + '원';
        }

        updateTotalPrice(); // 총 결제 예상금액 업데이트
      }

      // 총 결제 예상금액 업데이트 함수
      function updateTotalPrice() {
        var totalPrice = 0;

        for (var i = 0; i < quantityInputs.length; i++) {
          var quantityInput = quantityInputs[i];
          var priceElement = priceElements[i];
          var initialPrice = parseInt(priceElement.getAttribute('data-price'));
          var currentQuantity = parseInt(quantityInput.value);
          var itemPrice = initialPrice * currentQuantity;
          totalPrice += itemPrice;
        }

        totalPriceElement.innerText = new Intl.NumberFormat('ko-KR').format(totalPrice) + '원';
      }


      // 수량 감소 버튼 클릭 이벤트
      var quantityMinusBtns = document.querySelectorAll('.quantity-left-minus');
      quantityMinusBtns.forEach(function(quantityMinusBtn, index) {
        quantityMinusBtn.addEventListener('click', function() {
          var quantityInput = quantityInputs[index];
          var currentQuantity = parseInt(quantityInput.value);

          if (currentQuantity > 1) {
            currentQuantity--;
            quantityInput.value = currentQuantity;
            updatePrice(); // 가격 업데이트
            updateTotalPrice(); // 총 결제 예상금액 업데이트
          }
        });
      });

      // 수량 증가 버튼 클릭 이벤트
      var quantityPlusBtns = document.querySelectorAll('.quantity-right-plus');
      quantityPlusBtns.forEach(function(quantityPlusBtn, index) {
        quantityPlusBtn.addEventListener('click', function() {
          var quantityInput = quantityInputs[index];
          var currentQuantity = parseInt(quantityInput.value);

          currentQuantity++;
          quantityInput.value = currentQuantity;
          updatePrice(); // 가격 업데이트
          updateTotalPrice(); // 총 결제 예상금액 업데이트
        });
      });

      // 수량 변경시 이벤트
      quantityInputs.forEach(function(quantityInput) {
        quantityInput.addEventListener('change', function() {
          var newQuantity = parseInt(this.value);
          if (!isNaN(newQuantity) && newQuantity >= 1) {
            this.value = newQuantity;
          } else {
            this.value = 1;
          }
          updatePrice(); // 가격 업데이트
          updateTotalPrice(); // 총 결제 예상금액 업데이트
        });
      });

      
  
 
  // 주문하기 버튼 클릭 이벤트 핸들러
  var orderBtn = document.querySelector('#orderBtn');
  orderBtn.addEventListener('click', function() {
    for (var i = 0; i < quantityInputs.length; i++) {
      var quantityInput = quantityInputs[i];
      var cartAmount = parseInt(quantityInput.value);
      var priceElement = priceElements[i];
      var directCode = priceElement.getAttribute('data-direct-code');
      var directName = priceElement.getAttribute('data-direct-name');
      var directPrice = parseInt(priceElement.getAttribute('data-direct-price'));
      var calPrice = cartAmount * directPrice;

      var cartAmountInput = document.querySelector('.cartAmount[data-direct-code="' + directCode + '"]');
      var directCodeInput = document.querySelector('.directCode[data-direct-code="' + directCode + '"]');
      var directNameInput = document.querySelector('.directName[data-direct-code="' + directCode + '"]');
      var directPriceInput = document.querySelector('.directPrice[data-direct-code="' + directCode + '"]');
      var calPriceInput = document.querySelector('.calPrice[data-direct-code="' + directCode + '"]');

      cartAmountInput.value = cartAmount;
      directCodeInput.value = directCode;
      directNameInput.value = directName;
      directPriceInput.value = directPrice;
      calPriceInput.value = calPrice;
    }

    var form = document.querySelector('#yourFormId');
    form.submit();
  });

      // 페이지 로딩 시 초기 총 결제 예상금액 업데이트
      updateTotalPrice();
      
    });



    </script>
<c:import url="../temp/footer.jsp"></c:import>    
</body>

</html>
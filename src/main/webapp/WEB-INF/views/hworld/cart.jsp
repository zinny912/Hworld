<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
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
                           
                            
					         <!-- 체크박스 전체 여부 -->
					         <div class="all_check_input_div form-check custome-form-check">
					            <input type="checkbox" class="all_check_input checkbox_animated check-it" checked="checked" id="checkAll" name="checkAll" value="1"><span class="all_chcek_span">            
                                <a class="text-decoration-underline theme-color d-flex delete-selected" >선택 삭제</a>
					         	</span>
					         </div>            
         
                        	</td>
                        	<td>
                        	</td>
                        	<td>
                        	</td>
                        	<td>
                        	</td>
                        	
                        	</tr>
                <form action="../orderInfo" method="post" id="cartForm">
                    <c:forEach items="${cartInfo}" var="cart">
                            <tr>
                                <td class="cart-check-wrap">
                                        <div class="qty-box d-flex" >
                                            <div class="form-check custome-form-check">
                                                <input class="checkbox_animated check-it individual_cart_checkbox" checked="checked" type="checkbox"
                                                    id="flexCheckDefault10">
                                            </div>
                                        </div>
										<input type="text" class="cartAmount" name="orderAmount" value="${cart.cartAmount}" hidden="">
										<input type="text" class="directCode" name="directCode" value="${cart.directCode}" hidden="">
										<input type="text" class="directName" name="directName" value="${cart.directName}" hidden="">
										<input type="text" class="directPrice" name="directPrice" value="${cart.directPrice}" hidden="">
										<input type="text" class="calPrice" name="calPrice"value="${cart.directPrice * cart.cartAmount}" hidden="">

                                        
                                
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
										<c:set var="directCode" value="${cart.directCode}" />
										<c:set var="slicedCode" value="${directCode.substring(directCode.length() - 5)}" />
                                        <div class="mt-3 mb-3">
											<h2 class="fw-bold">
  												<a href="../direct/accessoryDetail?slicedCode=${slicedCode}">
											    ${cart.directName}
											  </a>
											</h2>
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
                                        <h2 class="mx-5 fw-bold"></h2>
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
            updateCartAmount(quantityInput, currentQuantity); // cartAmount 업데이트
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
          updateCartAmount(quantityInput, currentQuantity); // cartAmount 업데이트
        });
      });

      // 수량 변경시 이벤트
      quantityInputs.forEach(function(quantityInput) {
        quantityInput.addEventListener('change', function() {
          var newQuantity = parseInt(this.value);
          if (!isNaN(newQuantity) && newQuantity >= 1) {
            this.value = newQuantity;
            updatePrice(); // 가격 업데이트
            updateTotalPrice(); // 총 결제 예상금액 업데이트
            updateCartAmount(quantityInput, newQuantity); // cartAmount 업데이트
          } else {
            this.value = 1;
            updatePrice(); // 가격 업데이트
            updateTotalPrice(); // 총 결제 예상금액 업데이트
            updateCartAmount(quantityInput, 1); // cartAmount 업데이트
          }
        });
      });

      
      function updateCartAmount(quantityInput, newQuantity) {
    	  var cartItem = $(quantityInput).closest('tr');
    	  var orderAmountInput = cartItem.find('.cartAmount');
    	  var directPriceInput = cartItem.find('.directPrice');
    	  var calPriceInput = cartItem.find('.calPrice');

    	  orderAmountInput.val(newQuantity);

    	  var directPrice = parseFloat(directPriceInput.val());
    	  var calPrice = directPrice * newQuantity;
    	  calPriceInput.val(calPrice);
    	}




      
      /* 체크박스 전체 선택 */
      $(".all_check_input").on("click", function(){
         /* 체크박스 체크/해제 */
         if($(".all_check_input").prop("checked")){
            $(".individual_cart_checkbox").prop("checked", true);
            
         } else{
            $(".individual_cart_checkbox").prop("checked", false);
         }
         updateTotalPrice(); // 총 결제 예상금액 업데이트

         
      });
      
   // 체크박스 변경 이벤트 핸들러
      var checkboxes = document.querySelectorAll('.individual_cart_checkbox');
      checkboxes.forEach(function (checkbox) {
        checkbox.addEventListener('change', function () {
          updateTotalPrice(); // 총 결제 예상금액 업데이트
        });
      });
      
      
   // 선택 삭제 링크 클릭 이벤트 핸들러
      $('.delete-selected').click(function() {
        // 선택된 체크박스 가져오기
        var checkedItems = $('.individual_cart_checkbox:checked');

        if (checkedItems.length > 0) {
          // 확인 메시지 출력
          if (confirm('선택한 항목을 삭제하시겠습니까?')) {
            // 선택된 항목 삭제
            checkedItems.each(function() {
                var cartItem = $(this).closest('tr');
                var directCode = cartItem.find('input[name="directCode"]').val();
                var memberNum = '<%= session.getAttribute("memberNum") %>';


              // AJAX 요청을 통해 서버에 선택된 항목 삭제 요청 보내기
              $.ajax({
                url: './cartDelete',
                type: 'POST',
                data: { directCode: directCode},
                success: function(response) {
                  // 삭제 성공 시 해당 항목 제거
        		if (response === 'success') {
                    cartItem.remove();
                  } else {
                    alert('삭제 중 오류가 발생했습니다.');
                  }
                },
                error: function() {
                  alert('삭제 중 오류가 발생했습니다.');
                }
              });
            });
          }
        } else {
          alert('삭제할 항목을 선택해주세요.');
        }
      });




      // 총 결제 예상금액 업데이트 함수
      function updateTotalPrice() {
        var totalPrice = 0;

        checkboxes.forEach(function (checkbox, index) {
          if (checkbox.checked) {
            var quantityInput = quantityInputs[index];
            var priceElement = priceElements[index];
            var initialPrice = parseInt(priceElement.getAttribute('data-price'));
            var currentQuantity = parseInt(quantityInput.value);
            var itemPrice = initialPrice * currentQuantity;
            totalPrice += itemPrice;
          }
        });

        totalPriceElement.innerText = new Intl.NumberFormat('ko-KR').format(totalPrice) + '원';
      }
      
   // 주문하기 버튼 클릭 이벤트 핸들러
      $('#orderBtn').click(function() {
        var checkedItems = [];

        $('.individual_cart_checkbox:checked').each(function() {
          var cartItem = $(this).closest('tr');
          var orderAmount = cartItem.find('.cartAmount').val();
          var directCode = cartItem.find('.directCode').val();
          var directName = cartItem.find('.directName').val();
          var directPrice = cartItem.find('.directPrice').val();
          var calPrice = cartItem.find('.calPrice').val();

          var itemParams = {
            orderAmount: orderAmount,
            directCode: directCode,
            directName: directName,
            directPrice: directPrice,
            calPrice: calPrice
          };

          checkedItems.push(itemParams);
        });

        // 새로운 form 요소 생성
        var form = $('<form action="../orderInfo" method="post"></form>');

        // 체크한 항목들을 폼에 추가
        $.each(checkedItems, function(index, item) {
          form.append('<input type="hidden" name="orderAmount" value="' + item.orderAmount + '">');
          form.append('<input type="hidden" name="directCode" value="' + item.directCode + '">');
          form.append('<input type="hidden" name="directName" value="' + item.directName + '">');
          form.append('<input type="hidden" name="directPrice" value="' + item.directPrice + '">');
          form.append('<input type="hidden" name="calPrice" value="' + item.calPrice + '">');
        });

        // 새로운 form을 body에 추가하고 제출
        $('body').append(form);
        
        var totalAmount = calculateTotalAmount(checkedItems);
        if (totalAmount > 0) {
          // 폼 제출
        	form.submit();
        } else {
          // 결제금액이 0이므로 아무 동작 없음
          return false;
        }
      });
   

   // 결제금액 계산 함수
   function calculateTotalAmount(items) {
     var totalAmount = 0;
     $.each(items, function(index, item) {
       totalAmount += parseInt(item.calPrice);
     });
     return totalAmount;
   }

      // 페이지 로딩 시 초기 총 결제 예상금액 업데이트
      updateTotalPrice();
      
    });



    </script>
<c:import url="../temp/footer.jsp"></c:import>    
</body>

</html>
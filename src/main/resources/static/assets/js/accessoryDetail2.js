$(document).ready(function() {
  //가격에 1000단위로 , 표시
  function commaPrice(){
  const prices = document.querySelectorAll('[id^="renewPrice"]');
  for (var i = 0; i < prices.length; i++) {
    const price = parseInt(prices[i].innerHTML);
    const formattedPrice = price.toLocaleString();
    prices[i].innerHTML = formattedPrice;
    }
  };
  commaPrice();


// 리스트 요소 중 첫번째 보여주기 (가격이 제일 저렴한 상품)
$('.titlebox:first').show();
// 나머지 리스트 요소를 숨김
$('.titlebox:not(:first)').hide();


//colorCode list 작업
//리스트에서 directCode 추출해서 color 옵션이 있는 색상 버튼만 show 
const list = $('.direct-item');
const slicedCodes = [];
for (let i = 0; i < list.length; i++) {
  const directCode = $(list[i]).data('direct-code');
  const slicedCode = directCode.substring(6, 7).split('');
  slicedCodes[i]=slicedCode;
}
// 모든 컬러 옵션 li 태그 숨겼다가 for문 진행 후 일치하는 태그 보여주기 
$('.color-variant li[name="colorCode"]').hide();
for (let j=0; j < slicedCodes.length; j++) {
  const slicedCode = slicedCodes[j];
  // slicedCode가 존재하는 li 태그만 보이기
  $('.color-variant li[name="colorCode"][value="' + slicedCode + '"]').show();
}
//colorCode list 작업 끝



});
//$(document).ready(function(){}) 끝


//전역변수
let idx=0;
let arrPrice = [];

//색상 옵션이 선택되었을 때 이벤트
$('#colorTypes').on('click', 'li[name="colorCode"]', function(e){
  e.preventDefault();
  console.log('컬러선택');
  //갯수 0개로 초기화
  $('#optionQuantity').val('0');
  
  //선택한 컬러값을 가진 directCode를 id로 쓰는 div 태그 선택하기
    //선택한 컬러코드 추출
    let selectedColor = $(this).attr('value');
    //옵션 이름 표시 함수 호출
    setColorName(selectedColor);
    
    
    //해당 컬러코드(selectedColor)를 포함하는 directCode를 id로 쓰는 div 태그 선택
    $('.titlebox').each(function(){
      let directCode = $(this).attr('id');
      if(selectedColor === directCode.charAt(6)){
        //일치하는 directCode를 찾았으므로, 여기서 div 태그의 data-selected 속성을 바꿔준다.
        $('.titlebox').attr("data-selected", 0);
        $(this).attr("data-selected", 1);
        //data-selected 속성 값에 따라 hide, show 설정을 해준다
        $('.titlebox[data-selected=0]').hide();
        $('.titlebox[data-selected=1]').show();
        //색상 선택시 옵션창에 색상의 가격이 들어가게 해줌
        console.log('색상 일치! 일치하는 코드는: ', directCode);
        setOptionPrice(directCode);
        //setDirValue(directCode);
        return false;
      }
    })

});
//색상 옵션이 선택되었을 때 이벤트 끝


//수량버튼
//- 버튼 : 수량감소
$('#minusBtn').on('click', function() {
  console.log('마이너스');
  let quantity = $('#optionQuantity');
  let currentQuantity = parseInt(quantity.val());
  if (currentQuantity > 0) {
    quantity.val(currentQuantity - 1);
  }
});

//+ 버튼 : 수량증가
$('#plusBtn').on('click', function() {
  console.log('플러스');
  let quantity = $('#optionQuantity');
  let currentQuantity = parseInt(quantity.val());
  quantity.val(currentQuantity + 1);
});


//추가 버튼 클릭 시
$('#optionAdd').on('click', function() {
  console.log('옵션추가');
  let directCode = $('.titlebox[data-selected=1]').attr('id');
  let optionColor = $('#colorName').val();
  let optionPrice = $('#optionPrice').val();
  let optionAmount = $('#optionQuantity').val();
  let calPrice = optionPrice*optionAmount;

  console.log("directCode", directCode);
  console.log("optionColor", optionColor);
  console.log("optionPrice", optionPrice);
  console.log("optionAmount", optionAmount);
  console.log("calculationPrice", calPrice);
  
  //값 존재여부 확인
  codeCheck = isEmpty(directCode);
  colorCheck = isEmpty(optionColor);
  priceCheck = isEmpty(optionPrice);
  amountCheck = isEmpty(optionAmount);

  
  //값이 존재하는 경우, html을 추가.(옵션1개)
  if(priceCheck == true && amountCheck == true && optionAmount != 0){
    let setHtml = '<div id="optionOne'+idx+'">';
    setHtml = setHtml + '<div class="d-flex justify-content-between cart-content-wrap mb-2">';
    setHtml = setHtml + '<div class="col-4 my-auto d-flex justify-content-between">';
    setHtml = setHtml + '<span class="option-color" style="color: #7e7e7e;">색상</span>';
    setHtml = setHtml + '<span class="selected-color">'+optionColor+'</span>';
    setHtml = setHtml + '</div>';
    setHtml = setHtml + '<div class="col-3 my-auto d-flex justify-content-end">';
    setHtml = setHtml + '<span class="option-amount">'+optionAmount+'</span>';
    setHtml = setHtml + '<span>개</span>';
    setHtml = setHtml + '</div>';
    setHtml = setHtml + '<div class="col-3 my-auto d-flex justify-content-end">';
    setHtml = setHtml + '<span class="option-price">'+calPrice+'</span>';
    setHtml = setHtml + '<span>원</span>';
    setHtml = setHtml + '</div>';
    setHtml = setHtml + '<div class="col-2 mt-1 d-flex justify-content-end">';
    setHtml = setHtml + '<p class="theme-color2">';
    setHtml = setHtml + '<a href="javascript:void(0)"><i class="fas fa-times" data-idx="'+idx+'"></i></a>';
    setHtml = setHtml + '</p>';
    setHtml = setHtml + '</div>';
    setHtml = setHtml + '</div>';
    setHtml = setHtml + '<div class="orderInfos">';
    setHtml = setHtml + '<input type="hidden" name="directCode" value="'+directCode+'">';
    setHtml = setHtml + '<input type="hidden" name="orderAmount" value="'+optionAmount+'">';
    setHtml = setHtml + '<input type="hidden" name="calPrice" value="'+calPrice+'">';
    setHtml = setHtml + '</div>';
    setHtml = setHtml + '</div>';
    setHtml = setHtml + '</div>';
    $('#selectedOptionList').append(setHtml);

    arrPrice[idx] = calPrice;
    idx++;

    //totalPrice 계산
    if(arrPrice.length !== 0){
      let totalPrice = 0;
      for(let i=0; i<arrPrice.length; i++){
        totalPrice = totalPrice + arrPrice[i];
      }
      $('#totalPriceSpan').text(totalPrice);
      $('#totalPrice').val(totalPrice);
    }
  }

});
//추가 버튼 클릭 시 종료


// x 버튼 클릭 시 옵션 삭제
$(document).on('click', '.fa-times', function() {
  //x버튼과 optionOne을 연동, 해당 optionOne 삭제
  let idx = $(this).attr('data-idx');
  console.log(idx);
  $('#optionOne'+idx).remove();
  //$(this).closest('.cart-content-wrap').remove();

  //totalPrice 계산을 위한 배열 호출, 배열의 해당 idx값 삭제
  let ar = arrPrice;
  ar[idx] = 0;

  //totalPrice 계산
  if(arrPrice.length !== 0){
    let totalPrice = 0;
    for(let i=0; i<arrPrice.length; i++){
      totalPrice = totalPrice + arrPrice[i];
    }
    $('#totalPriceSpan').text(totalPrice);
    $('#totalPrice').val(totalPrice);
  }
});






//필요한 값이 입력되어있는지 확인하는 함수
function isEmpty(value){
  if(typeof value == "undefined" || value == null || value == '')
      return false;
  else
      return true;
}




//색상 옵션이 선택됐을 때 옵션에 따른 개당 가격을 세팅해주는 함수
function setOptionPrice(directCode){
  let item = $('#item_'+directCode);
  let initPrice = item.attr("data-direct-price");
  let initStock = item.attr("data-direct-stock");

  //옵션창에 값, 재고 세팅
  $('#optionPrice').val(initPrice);
  $('#optionStock').val(initStock);
}







//색상 옵션이 선택됐을 때 값을 넣어주는 함수
function setDirValue(directCode){
  let item = $('#item_'+directCode);
  console.log(item.attr("data-direct-code")); 
  console.log(item.attr("data-category-code"));
  console.log(item.attr("data-brand-code"));
  console.log(item.attr("data-sliced-code"));
  console.log(item.attr("data-direct-stock"));
  console.log(item.attr("data-direct-price"));


}


//선택된 옵션 이름 보여주기
function setColorName(selectedColor){
  if(selectedColor==="W"){
    const colorName = "화이트";
    $('#colorName').val(colorName);
  }else if(selectedColor==="B"){
    const colorName = "블랙";
    $('#colorName').val(colorName);
  }else if(selectedColor==="G"){
    const colorName = "그레이";
    $('#colorName').val(colorName);
  }else{
    const colorName ="옵션없음";
    $('#colorName').val(colorName);
  }
}






















//일치하는 directCode를 가진 titlebox를 표시하고 나머지는 숨김처리
// function updateTitleBoxVisibility(directCode) {
// const directListItems = $('#directList').find('.direct-item');
// let matchingItemFound = false;
// //loop
// directListItems.each(function() {
// const listItem = $(this);
// const listItemDirectCode = listItem.attr('data-direct-code');

// if (listItemDirectCode === directCode) {
// listItem.closest('.titlebox').show();
// matchingItemFound = true;
// const price = $(this).data('direct-price');
// // 수량 버튼으로 orderAmount, totalPrice 값 만들기
// $('.quantity-left-minus').click(function(e) {
// e.preventDefault();
// e.stopPropagation();
// const inputNumber = $(this).siblings('.input-wrapper').find('.input-number');
// console.log(inputNumber.val());
// let quantity = parseInt(inputNumber.val());

// if (quantity > 1) {
// quantity=quantity-1;
// inputNumber.val(quantity);
// calculateTotalPrice();
// }
// });

// // 수량 증가 버튼 클릭 시
// $('.quantity-right-plus').click(function(e) {
// e.preventDefault();
// e.stopPropagation();
// const inputNumber = $(this).siblings('.input-wrapper').find('.input-number');
// let quantity = parseInt(inputNumber.val());

// quantity=quantity+1;
// inputNumber.val(quantity);
// calculateTotalPrice();
// });

// // 수량 변경 시
// $('.input-number').change(function() {
// calculateTotalPrice();
// });

// function calculateTotalPrice() {
// let initPrice=price;
// const quantity2= $('.input-number').val();
// const totalPrice=initPrice*quantity2;

// console.log("total Price: ", totalPrice);

// $('#totalQty').text(totalPrice);
// $('#totalPrice').val(totalPrice);
// $('#orderAmount').val(quantity2);
// }
// } else {
// listItem.closest('.titlebox').hide();
// }

// //loop end
// });

// if (!matchingItemFound) {
//   $('.noStock').show(); // 일치하는 제품이 없는 경우 재고없음을 나타내는 div를 보여줌
//   } else {
//   $('.noStock').hide(); // 일치하는 제품이 있는 경우 재고없음을 나타내는 div를 숨김
//   }
// }











///////////////////////////////////////

// Color Option 선택시 directCode 만들기 완성된 것을 $('#directCode').val에 저장
// $('.optionArea').on('click', 'li[name="colorCode"]', function(e) {
//   e.preventDefault();
//   const selectedOptions = getSelectedOptions();

//   let colorCode = selectedOptions.colorCode;
//   let categoryCode = $("#categoryCode").val();
//   let brandCode = $("#brandCode").val();
//   let slicedCode = $("#slicedCode").val();
//   let directCode = '';
//   if (colorCode != null) {
//     directCode = "P" + categoryCode + "B" + brandCode + "C" + colorCode + "V000" + slicedCode;
//     $('#directCode').text(directCode);
//     updateTitleBoxVisibility(directCode); // 일치하는 titlebox 업데이트
    
//     // 선택된 옵션 이름 수량 옆 버튼에 보여주기
//     const colorValue=$('#colorName').val('C'+colorCode).val();
//     if(colorValue==="CW"){
// 	  const colorName = "화이트";
// 	  $('#colorName').val(colorName);
//   }else if(colorValue==="CB"){
// 	  const colorName = "블랙";
// 	  $('#colorName').val(colorName);
//   }else if(colorValue==="CG"){
// 	  const colorName = "그레이";
// 	  $('#colorName').val(colorName);
//   }else{
// 	  const colorName ="옵션없음";
// 	  $('#colorName').val(colorName);
//   }

//   }
//   e.stopPropagation();

// // 일치하는 directCode를 가진 titlebox를 표시하고 나머지는 숨김
// function updateTitleBoxVisibility(directCode) {
// const directListItems = $('#directList').find('.direct-item');
// let matchingItemFound = false;
// //loop
// directListItems.each(function() {
//   const listItem = $(this);
//   const listItemDirectCode = listItem.attr('data-direct-code');

//   if (listItemDirectCode === directCode) {
//     listItem.closest('.titlebox').show();
//     matchingItemFound = true;
// 	const price = $(this).data('direct-price');
//     // 수량 버튼으로 orderAmount, totalPrice 값 만들기
//     $('.quantity-left-minus').click(function(e) {
//       e.preventDefault();
//       e.stopPropagation();
//       const inputNumber = $(this).siblings('.input-wrapper').find('.input-number');
//       console.log(inputNumber.val());
//       let quantity = parseInt(inputNumber.val());

//       if (quantity > 1) {
//         quantity=quantity-1;
//         inputNumber.val(quantity);
//         calculateTotalPrice();
//       }
//     });

//     // 수량 증가 버튼 클릭 시
//     $('.quantity-right-plus').click(function(e) {
//       e.preventDefault();
//       e.stopPropagation();
//       const inputNumber = $(this).siblings('.input-wrapper').find('.input-number');
//       let quantity = parseInt(inputNumber.val());

//       quantity=quantity+1;
//       inputNumber.val(quantity);
//       calculateTotalPrice();
//     });

//     // 수량 변경 시
//     $('.input-number').change(function() {
//     calculateTotalPrice();
//     });

//    function calculateTotalPrice() {
//     let initPrice=price;
//       const quantity2= $('.input-number').val();
//       const totalPrice=initPrice*quantity2;

// 	console.log("total Price: ", totalPrice);

// 	$('#totalQty').text(totalPrice);
// 	$('#totalPrice').val(totalPrice);
// 	$('#orderAmount').val(quantity2);
//    }
//   } else {
//     listItem.closest('.titlebox').hide();
//   }
  
// //loop end
// });

// if (!matchingItemFound) {
  
//   $('.noStock').show(); // 일치하는 제품이 없는 경우 재고없음을 나타내는 div를 보여줌
// } else {
//   $('.noStock').hide(); // 일치하는 제품이 있는 경우 재고없음을 나타내는 div를 숨김
// }  

// }

// function getSelectedOptions(e) {
  
// 	const options = {
// 	  colorCode: null,
// 	};
// 	const colorCode = $('.optionArea li[name="colorCode"].selected').attr('value');

// 	if (colorCode) {
//   	options.colorCode = colorCode;
// 	}
// 	return options;
// 	}
  
// }); 

//   // 후기 작성 버튼 클릭 시 모달 창이 열릴 때 실행되는 함수
//    $('#addReview').on('show.bs.modal', function (event) {
//      const directName = $('.directNameValue').data('direct-name'); // 해당 후기 작성 버튼에 연결된 제품의 directName 값을 가져옴
//      $('#directName2').text(directName); // 모달 창 내에서 제품명을 표시하는 곳에 directName 값을 설정
//    });
//    //문의 작성 버튼 클릭 시 모달 창이 열릴 때 실행되는 함수
//    $('#addQna').on('show.bs.modal', function (event) {
//          const directName = $('.directNameValue').data('direct-name'); // 해당 후기 작성 버튼에 연결된 제품의 directName 값을 가져옴
//          $('#directName3').text(directName); // 모달 창 내에서 제품명을 표시하는 곳에 directName 값을 설정
//        });
    
//    $('#addReply').on('show.bs.modal', function(event) {
//        const button = $(event.relatedTarget); // 클릭한 버튼 요소
//        const qnaNum = button.data('qna-num'); // data-qna-num 속성 값 가져오기
//        const qnaContents = button.closest('.accordion-item').find('#qnaContentsQ').text().trim(); // 문의 내용 가져오기
//        const directName = $('.directNameValue').data('direct-name'); // 해당 후기 작성 버튼에 연결된 제품의 directName 값을 가져옴
//          $('#directName4').text(directName); // 모달 창 내에서 제품명을 표시하는 곳에 directName 값을 설정
  
//        // 모달 내부 요소에 값 설정
//        $(this).find('#modalQnaNum').val(qnaNum);
//        $(this).find('#modelQnaContents').val(qnaContents);
//      });
  


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



});
//$(document).ready(function(){}) 끝



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


//색상 옵션이 선택되었을 때 이벤트
$('#colorTypes').on('click', 'li[name="colorCode"]', function(e){
  e.preventDefault();
  console.log('컬러선택');


});
//색상 옵션이 선택되었을 때 이벤트 끝


//일치하는 directCode를 가진 titlebox를 표시하고 나머지는 숨김처리
function updateTitleBoxVisibility(directCode) {
const directListItems = $('#directList').find('.direct-item');
let matchingItemFound = false;
//loop
directListItems.each(function() {
const listItem = $(this);
const listItemDirectCode = listItem.attr('data-direct-code');

if (listItemDirectCode === directCode) {
listItem.closest('.titlebox').show();
matchingItemFound = true;
const price = $(this).data('direct-price');
// 수량 버튼으로 orderAmount, totalPrice 값 만들기
$('.quantity-left-minus').click(function(e) {
e.preventDefault();
e.stopPropagation();
const inputNumber = $(this).siblings('.input-wrapper').find('.input-number');
console.log(inputNumber.val());
let quantity = parseInt(inputNumber.val());

if (quantity > 1) {
quantity=quantity-1;
inputNumber.val(quantity);
calculateTotalPrice();
}
});

// 수량 증가 버튼 클릭 시
$('.quantity-right-plus').click(function(e) {
e.preventDefault();
e.stopPropagation();
const inputNumber = $(this).siblings('.input-wrapper').find('.input-number');
let quantity = parseInt(inputNumber.val());

quantity=quantity+1;
inputNumber.val(quantity);
calculateTotalPrice();
});

// 수량 변경 시
$('.input-number').change(function() {
calculateTotalPrice();
});

function calculateTotalPrice() {
let initPrice=price;
const quantity2= $('.input-number').val();
const totalPrice=initPrice*quantity2;

console.log("total Price: ", totalPrice);

$('#totalQty').text(totalPrice);
$('#totalPrice').val(totalPrice);
$('#orderAmount').val(quantity2);
}
} else {
listItem.closest('.titlebox').hide();
}

//loop end
});

if (!matchingItemFound) {
  $('.noStock').show(); // 일치하는 제품이 없는 경우 재고없음을 나타내는 div를 보여줌
  } else {
  $('.noStock').hide(); // 일치하는 제품이 있는 경우 재고없음을 나타내는 div를 숨김
  }
}











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
  
   


$(document).ready(function() {
 

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


//색상 옵션이 선택되었을 때 이벤트
$('#colorTypes').on('click', 'li[name="colorCode"]', function(e){
  e.preventDefault();
  console.log('컬러선택');
  //갯수 0개로 초기화
  $('#optionQuantity').val('1');
  
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


//추가 버튼 클릭시
$('#optionAdd').on('click', function() {
  console.log('옵션추가');
  let directCode = $('.titlebox[data-selected=1]').attr('id');
  let optionColor = $('#colorName').val();
  let optionPrice = $('#optionPrice').val();
  let optionAmount = parseInt($('#optionQuantity').val());
  let calPrice = optionPrice * optionAmount;
  let stock = $('#optionStock2').val();
  if(stock==0){
		alert("품절된 상품입니다. 다른 옵션을 선택해주세요.");
	}	
	
	if(stock<optionAmount){
		   alert("수량 추가가 불가합니다. 해당 제품은 "+stock+"개 구매가능합니다.");
	   }
		

  //값 존재여부 확인
  codeCheck = isEmpty(directCode);
  colorCheck = isEmpty(optionColor);
  priceCheck = isEmpty(optionPrice);
  amountCheck = isEmpty(optionAmount);
  stockCheck = isEmpty(stock);

  //값이 존재하는 경우, HTML을 추가하지 않고 기존 요소 업데이트
  if (optionColor != '' && priceCheck == true && amountCheck == true && optionAmount != 0 && stock >= optionAmount) {
    // 기존 optionOne의 존재여부 체크
    let existingOption = $('#selectedOptionList').find('div[id^="optionOne"]').filter(function() {
      return $(this).find('input[name="directCode"]').val() === directCode;
    });

    if (existingOption.length > 0) {
      //기존 요소의 optionAmount와 calPrice 값을 업데이트
    let existingOptionAmount = parseInt(existingOption.find('.option-amount').text());
    let existingCalPrice = parseInt(existingOption.find('.option-price').text().replace(/[,]/g, ''));
    let updatedOptionAmount = existingOptionAmount + optionAmount;
    let updatedCalPrice = existingCalPrice + calPrice;

	let selectedAmount = updatedOptionAmount; 
       
       if(stock<selectedAmount){
		   alert("수량 추가가 불가합니다. 해당 제품은 "+stock+"개 구매가능합니다.");
		   updatedOptionAmount=updatedOptionAmount-optionAmount;
		   updatedCalPrice = updatedCalPrice - calPrice;
	   }
      //optionAmount와 calPrice 값을 업데이트
      existingOption.find('.option-amount').text(updatedOptionAmount);
      existingOption.find('.option-price').text(updatedCalPrice);
      existingOption.find('input[name="orderAmount"]').val(updatedOptionAmount);
      existingOption.find('input[name="cartAmount"]').val(updatedOptionAmount);
      existingOption.find('input[name="calPrice"]').val(updatedCalPrice);
       
	
    } else {
      //값이 존재하지 않는 경우, HTML을 추가
      let setHtml = '<div id="optionOne' + idx + '">';
      setHtml += '<div class="d-flex justify-content-between cart-content-wrap mb-2">';
      setHtml += '<div class="col-4 my-auto d-flex justify-content-between">';
      setHtml += '<span class="option-color" style="color: #7e7e7e;">색상</span>';
      setHtml += '<span class="selected-color">' + optionColor + '</span>';
      setHtml += '</div>';
      setHtml += '<div class="col-3 my-auto d-flex justify-content-end">';
      setHtml += '<span class="option-amount">' + optionAmount + '</span>';
      setHtml += '<input id="testAmount" type="hidden">';
      setHtml += '<span>개</span>';
      setHtml += '</div>';
      setHtml += '<div class="col-3 my-auto d-flex justify-content-end">';
      setHtml += '<span class="option-price renewPrice">' + calPrice + '</span>';
      setHtml += '<span>원</span>';
      setHtml += '</div>';
      setHtml += '<div class="col-2 mt-1 d-flex justify-content-end">';
      setHtml += '<p class="theme-color2">';
      setHtml += '<a href="javascript:void(0)"><i class="fas fa-times" data-idx="' + idx + '"></i></a>';
      setHtml += '</p>';
      setHtml += '</div>';
      setHtml += '</div>';
      setHtml += '<div class="orderInfos">';
      setHtml += '<input type="hidden" name="directCode" value="' + directCode + '">';
      setHtml += '<input type="hidden" name="orderAmount" value="' + optionAmount + '">';
      setHtml += '<input type="hidden" name="cartAmount" value="' + optionAmount + '">';
      setHtml += '<input type="hidden" name="calPrice" value="' + calPrice + '">';
      setHtml += '</div>';
      setHtml += '</div>';
	

      //태그 추가
      $('#selectedOptionList').append(setHtml);
      idx++;

    }

    // totalPrice 계산
		let totalPrice = 0;
		$('.option-price').each(function() {
		  let price = $(this).text();
		  let priceValue = parseInt(price.replace(/[,]/g, ""));
		  totalPrice += priceValue;
		  // 계산 결과 세팅
		  let formattedPrice = priceValue.toLocaleString();
		  $(this).text(formattedPrice);
		  $('#totalPriceSpan').text(totalPrice.toLocaleString());
		  $('#totalPrice').val(totalPrice);
		});
		

    //옵션 초기화
    $('#optionQuantity').val('0');
    $('#colorName').val('');
  }
});


//x 버튼 클릭 시 옵션 삭제
$(document).on('click', '.fa-times', function() {
  //x버튼과 optionOne을 연동, 해당 optionOne 삭제
  let idx = $(this).attr('data-idx');
  $('#optionOne'+idx).remove();

  // totalPrice 계산
let totalPrice = 0;
$('.option-price').each(function() {
  let price = $(this).text();
  let priceValue = parseInt(price.replace(/[,]/g, "").trim());  // 쉼표(,) 제거 후 정수로 변환
  totalPrice += priceValue;
  // 계산 결과 세팅
  let formattedPrice = priceValue.toLocaleString();
  $(this).text(formattedPrice);
  $('#totalPriceSpan').text(totalPrice.toLocaleString());
  $('#totalPrice').val(totalPrice);
});
});



$('#orderBtn').click(function(){

  // 폼의 action 속성 변경
  $('#orderForm').attr('action', '/orderInfo');

  // 폼 넘기기
  $('#orderForm').submit();
});

$('.btn_cart').click(function(){
  // 필요한 검증 및 처리 로직

  // 폼의 action 속성 변경
  $('#orderForm').attr('action', '/cart/add');

  // 폼 넘기기
  $('#orderForm').submit();
});



//필요한 값이 입력되어있는지 확인하는 함수
function isEmpty(value){
  if(typeof value == "undefined" || value == null || value == '')
      return false;
  else
      return true;
}


//색상 옵션이 선택됐을 때 옵션에 따른 개당 가격, 재고를 세팅해주는 함수
function setOptionPrice(directCode){
  let item = $('#item_'+directCode);
  let initPrice = item.attr("data-direct-price");
  let initStock = item.attr("data-direct-stock");

	
  //옵션창에 값, 재고 세팅
  $('#optionPrice').val(initPrice);
  $('#optionStock').val(initStock);
  $('#optionStock2').val(initStock);
  
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


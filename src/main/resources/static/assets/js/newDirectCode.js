$(document).ready(function() {
	

  $('.titlebox:first').show();
  // 나머지 리스트 요소를 숨김
  $('.titlebox:not(:first)').hide();


  
 // Option 선택시 directCode 완성된 것을 $('#directCode').val에 저장
  $('.optionArea').on('click', 'li[name="colorCode"]', function() { // 컬러 선택시
    const selectedOptions = getSelectedOptions();

    let colorCode = selectedOptions.colorCode;
    let saveCapacity = selectedOptions.saveCapacity;
    let categoryCode = $("#productCode").attr("data-category-code");
    let brandCode = $("#productCode").attr("data-brand-code");
    let slicedCode = $("#productCode").attr("data-sliced-code");
    let directCode = '';
    

    if (colorCode != null && saveCapacity != null) {
      directCode = "P" + categoryCode + "B" + brandCode + "C" + colorCode + "V" + saveCapacity + slicedCode;
      $('#directCode').val(directCode);
      updateTitleBoxVisibility(directCode); // 일치하는 titlebox 업데이트
	$('.direct-item').each(function() {
	  let listItem = $(this);
	  let productDirectCode = listItem.attr("data-direct-code");
	   
	  if (directCode === productDirectCode) {
	    let directStock = listItem.attr("data-direct-stock");
	    console.log(directStock);
	    $('#directStock').val(directStock);
	    $('#directCode').val(productDirectCode); // directCode 값을 설정
	    return false; // 반복문 종료
	  }
	});
	
    	}
  });
  
 

  $('.optionArea').on('click', 'label.capacity', function() { // 용량 선택시
    var saveCapacity = $(this).prev('input[name="saveCapacity"]');
    saveCapacity.prop('checked', true);

    var selectedOptions = getSelectedOptions();

    // 추가작업
    let colorCode2 = selectedOptions.colorCode;
    let saveCapacity2 = selectedOptions.saveCapacity;
    let categoryCode2 = $("#productCode").attr("data-category-code");
    let brandCode2 = $("#productCode").attr("data-brand-code");
    let slicedCode2 = $("#productCode").attr("data-sliced-code");
    let directCode2 = '';
    
    
    if (colorCode2 != null && saveCapacity2 != null) {
      directCode2 = "P" + categoryCode2 + "B" + brandCode2 + "C" + colorCode2 + "V" + saveCapacity2 + slicedCode2;
	    $('#directCode').val(directCode2);
	    
	 	updateTitleBoxVisibility(directCode2); // 일치하는 titlebox 업데이트
	$('.direct-item').each(function() {
	  let listItem2 = $(this);
	  let productDirectCode2 = listItem2.attr("data-direct-code");
	  
	  if (directCode2 === productDirectCode2) {
	    let directStock2 = listItem2.attr("data-direct-stock");
	    
	    $('#directStock').val(directStock2);
	    $('#directCode').val(productDirectCode2); // directCode 값을 설정
	    return false; // 반복문 종료
	  }
	});
	
    }
  }); 


  $('.optionArea').on('click', 'li[name="colorCode"]', function() { // 컬러 선택시
  const selectedOptions = getSelectedOptions();

  let colorCode = selectedOptions.colorCode;
  let saveCapacity = selectedOptions.saveCapacity;

  if (colorCode != null) {
    updateCapacityOptions(colorCode); // 일치하는 용량 옵션 업데이트
 // 선택한 컬러에 해당하는 용량 옵션을 해제
    if (saveCapacity != null) {
      $('.optionArea input[name="saveCapacity"][value="' + saveCapacity + '"]').prop('checked', false);
    }
  }
});


  
  function updateCapacityOptions(colorCode) {
  const capacityOptions = $('.optionArea input[name="saveCapacity"]');
  capacityOptions.prop('disabled', false); // 용량 옵션을 모두 활성화 상태로 초기화

  const directListItems = $('#directList').find('.direct-item');
  const matchingCapacities = []; // 매칭되는 용량 옵션을 담을 배열

  directListItems.each(function() {
    const listItem = $(this);
    const listItemDirectCode = listItem.attr('data-direct-code');
    const listItemColorCode = listItemDirectCode.substring(6, 7); // 컬러 코드 추출

    if (listItemColorCode === colorCode) {
      const listItemCapacityCode = listItemDirectCode.substring(8, 11); // 용량 코드 추출
      matchingCapacities.push(listItemCapacityCode);
      const listItemStock = parseInt(listItem.attr('data-direct-stock')); // 재고 정보 추출

      if (listItemStock === 0) {
        capacityOptions.filter(`[value="${listItemCapacityCode}"]`).next('label.capacity').addClass('btn-disabled');
      } else {
        capacityOptions.filter(`[value="${listItemCapacityCode}"]`).next('label.capacity').removeClass('btn-disabled');
      }
    }
  });

  capacityOptions.each(function() {
    const capacityOption = $(this);
    const capacityCode = capacityOption.val();

    if (!matchingCapacities.includes(capacityCode)) {
      capacityOption.next('label.capacity').addClass('btn-disabled');
    }
  });
}

// 초기 실행
const selectedOptions = getSelectedOptions();
let initialColorCode = selectedOptions.colorCode;

if (initialColorCode != null) {
  updateCapacityOptions(initialColorCode); // 초기 선택한 색상에 대한 용량 옵션 업데이트
}


  // 일치하는 directCode를 가진 titlebox를 표시하고 나머지는 숨김
  function updateTitleBoxVisibility(directCode) {
    const directListItems = $('#directList').find('.direct-item');
    let matchingItemFound = false;
    directListItems.each(function() {
      const listItem = $(this);
      const listItemDirectCode = listItem.attr('data-direct-code');

      if (listItemDirectCode === directCode) {
        listItem.closest('.titlebox').show(); 
        matchingItemFound = true;  
      } else {
        listItem.closest('.titlebox').hide();
      }
      
    });

  }


function getSelectedOptions() {
  const options = {
    colorCode: null,
    saveCapacity: null
  };

  const colorCode = $('.optionArea li[name="colorCode"].selected').attr('value');
  const saveCapacity = $('.optionArea input[name="saveCapacity"]:checked').val();

  if (colorCode) {
    options.colorCode = colorCode;
  }

  if (saveCapacity) {
    options.saveCapacity = saveCapacity;
  }

  return options;
}



const capacity = document.getElementsByClassName('capacity');
        for(let capacity2 of capacity){
            capacity2.addEventListener('click', function(){
                if(capacity2.classList.contains('btn-outline-custom')){
                    for(let capacity3 of capacity){
                        if(capacity3.classList.contains('btn-solid-after')){
                            capacity3.classList.remove('btn-solid-after');
                            capacity3.classList.add('btn-outline-custom');
                        }
                    }
                    capacity2.classList.remove('btn-outline-custom');
                    capacity2.classList.add('btn-solid-after');
                }
                else{
                    capacity2.classList.remove('btn-solid-after');
                    capacity2.classList.add('btn-outline-custom');
                }
            })
        }

        const joinType = document.getElementsByClassName('joinType');
        for(let joinType2 of joinType){
            joinType2.addEventListener('click', function(){
                if(joinType2.classList.contains('btn-outline-custom')){
                    for(let joinType3 of joinType){
                        if(joinType3.classList.contains('btn-solid-after')){
                            joinType3.classList.remove('btn-solid-after');
                            joinType3.classList.add('btn-outline-custom');
                        }
                    }

                    joinType2.classList.remove('btn-outline-custom');
                    joinType2.classList.add('btn-solid-after');
                }
                else{
                    joinType2.classList.remove('btn-solid-after');
                    joinType2.classList.add('btn-outline-custom');
                }
            })
        }

        const payType = document.getElementsByClassName('payType');
        for(let payType2 of payType){
            payType2.addEventListener('click', function(){
                if(payType2.classList.contains('btn-outline-custom')){
                    for(let payType3 of payType){
                        if(payType3.classList.contains('btn-solid-after')){
                            payType3.classList.remove('btn-solid-after');
                            payType3.classList.add('btn-outline-custom');
                        }
                    }

                    payType2.classList.remove('btn-outline-custom');
                    payType2.classList.add('btn-solid-after');
                }
                else{
                    payType2.classList.remove('btn-solid-after');
                    payType2.classList.add('btn-outline-custom');
                }
            })
        }



}); 

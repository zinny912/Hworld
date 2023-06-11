$(document).ready(function() {
	
  const commaPrice = function() {
    const prices = document.querySelectorAll('[id^="renewPrice"]');
    for (var i = 0; i < prices.length; i++) {
      const price = parseInt(prices[i].innerHTML);
      const renewPrice = price.toLocaleString();
      prices[i].innerHTML = renewPrice;
    }
  };
  
  $('.noStock').hide();
  
  $('.titlebox:first').show();
  
  // 나머지 리스트 요소를 숨김
  $('.titlebox:not(:first)').hide();

  commaPrice();
 // Option 선택시 directCode 완성된 것을 $('#directCode').val에 저장
  $('.optionArea').on('click', 'li[name="colorCode"]', function() { // 컬러 선택시
    const selectedOptions = getSelectedOptions();

    // 추가작업
    let colorCode = selectedOptions.colorCode;
    let saveCapacity = selectedOptions.saveCapacity;
    let categoryCode = $("#categoryCode").val();
    let brandCode = $("#brandCode").val();
    let slicedCode = $("#slicedCode").val();
    let directCode = '';
    if (colorCode != null && saveCapacity != null) {
      directCode = "P" + categoryCode + "B" + brandCode + "C" + colorCode + "V" + saveCapacity + slicedCode;
      console.log('너의 이름은? :' + directCode);
      $('#directCode').text(directCode);
      updateTitleBoxVisibility(directCode); // 일치하는 titlebox 업데이트
    }
  });
     
 
 
  $('.optionArea').on('click', 'label.capacity', function() { // 용량 선택시
    var saveCapacity = $(this).prev('input[name="saveCapacity"]');
    saveCapacity.prop('checked', true);

    var selectedOptions = getSelectedOptions();

    // 추가작업
    let colorCode2 = selectedOptions.colorCode;
    let saveCapacity2 = selectedOptions.saveCapacity;
    let categoryCode2 = $("#categoryCode").val();
    let brandCode2 = $("#brandCode").val();
    let slicedCode2 = $("#slicedCode").val();
    let directCode2 = '';
    if (colorCode2 != null && saveCapacity2 != null) {
      directCode2 = "P" + categoryCode2 + "B" + brandCode2 + "C" + colorCode2 + "V" + saveCapacity2 + slicedCode2;
      console.log('너 이름이 뭐니? :' + directCode2);
      $('#directCode').text(directCode2);
	 	updateTitleBoxVisibility(directCode2); // 일치하는 titlebox 업데이트
    }
  }); 


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
  if (!matchingItemFound) {
    $('.noStock').show(); // 일치하는 제품이 없는 경우 재고없음을 나타내는 div를 보여줌
  } else {
    $('.noStock').hide(); // 일치하는 제품이 있는 경우 재고없음을 나타내는 div를 숨김
  }  


  }


function getSelectedOptions() {
  var options = {
    colorCode: null,
    saveCapacity: null
  };

  var colorCode = $('.optionArea li[name="colorCode"].selected').attr('value');
  var saveCapacity = $('.optionArea input[name="saveCapacity"]:checked').val();

  if (colorCode) {
    options.colorCode = colorCode;
  }

  if (saveCapacity) {
    options.saveCapacity = saveCapacity;
  }

  return options;
}


}); 

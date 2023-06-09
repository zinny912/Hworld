$(document).ready(function() {
	const commaPrice = function(){
    const prices = document.querySelectorAll('[id^="renewPrice"]');
    for (var i = 0; i < prices.length; i++) {
        const price = parseInt(prices[i].innerHTML);
        const renewPrice = price.toLocaleString();
        prices[i].innerHTML =renewPrice;
        }
	};


//Option 선택시 directCode 완성된 것을 $('#directCode').val에 저장
    $('.optionArea').on('click', 'li[name="colorCode"]', function() { //컬러 선택시
    var selectedOptions = getSelectedOptions();
    //console.log('Selected options:', selectedOptions);

    //추가작업
    let colorCode = selectedOptions.colorCode;
    let saveCapacity = selectedOptions.saveCapacity;
    let categoryCode = $("#categoryCode").val();
    let brandCode = $("#brandCode").val();
    let slicedCode = $("#slicedCode").val();
    let directCode = '';
    if(colorCode!=null && saveCapacity!=null){
        directCode = "P" + categoryCode + "B" + brandCode + "C" + colorCode + "V" + saveCapacity + slicedCode;
        console.log(directCode);
        $('#directCode').text(directCode);
        $('#directStock').val('');
        }
        commaPrice();
        });
        
   $('.optionArea').on('click', 'label.capacity', function() { //용량 선택시
    var saveCapacity = $(this).prev('input[name="saveCapacity"]');
    saveCapacity.prop('checked', true);

    var selectedOptions = getSelectedOptions();
    //console.log('Selected options:', selectedOptions);

    //추가작업
    let colorCode2 = selectedOptions.colorCode;
    let saveCapacity2 = selectedOptions.saveCapacity;
    let categoryCode2 = $("#categoryCode").val();
    let brandCode2 = $("#brandCode").val();
    let slicedCode2 = $("#slicedCode").val();
    let directCode2 = '';
    if(colorCode2!=null && saveCapacity2!=null){
        directCode2 = "P" + categoryCode2 + "B" + brandCode2 + "C" + colorCode2 + "V" + saveCapacity2 + slicedCode2;
        console.log(directCode2); 
        commaPrice();}
        });
        
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


$(document).ready(function() {
	const commaPrice = function(){
    const prices = document.querySelectorAll('[id^="renewPrice"]');
    for (var i = 0; i < prices.length; i++) {
        const price = parseInt(prices[i].innerHTML);
        const renewPrice = price.toLocaleString();
        prices[i].innerHTML =renewPrice;
        }
	};

	commaPrice();

    //Option 선택시 directCode 완성된 것을 $('#directCode').val에 저장
    $('.optionArea').on('click', 'li[name="colorCode"]', function() { //컬러 선택시
    var selectedOptions = getSelectedOptions();
    //console.log('Selected options:', selectedOptions);

    //추가작업
    let colorCode = selectedOptions.colorCode;
    let saveCapacity = selectedOptions.saveCapacity;
    let categoryCode = $("#categoryCode").val();
    let brandCode = $("#brandCode").val();
    let slicedCode = $("#slicedCode").val();
    let directCode = '';
    if(colorCode!=null && saveCapacity!=null){
        directCode = "P" + categoryCode + "B" + brandCode + "C" + colorCode + "V" + saveCapacity + slicedCode;
        console.log(directCode);
        $('#directCode').text(directCode);
        $('#directStock').val('');
        
        // JSP 페이지의 리스트에서 일치하는 directCode 찾기
        var directListItems = $('#directList').find('.direct-item');
        directListItems.each(function() {
            var listItem = $(this);
            var listItemDirectCode = listItem.attr('data-direct-code');

            if (listItemDirectCode === directCode2) {
                // 일치하는 항목을 찾았을 때의 동작을 여기에 작성합니다.
                // 예: 데이터 가져오기, 표시 업데이트 등
                var directPrice = listItem.attr('data-direct-price');
                var directStock = listItem.attr('data-direct-stock');
                console.log('Matching item found:', listItem);
                console.log('Direct Price:', directPrice);
                console.log('Direct Stock:', directStock);
                // 추가 작업 수행
                // ...
            }
        });
    	}
  });

  $('.optionArea').on('click', 'label.capacity', function() { //용량 선택시
    var saveCapacity = $(this).prev('input[name="saveCapacity"]');
    saveCapacity.prop('checked', true);

    var selectedOptions = getSelectedOptions();
    //console.log('Selected options:', selectedOptions);

    //추가작업
    let colorCode2 = selectedOptions.colorCode;
    let saveCapacity2 = selectedOptions.saveCapacity;
    let categoryCode2 = $("#categoryCode").val();
    let brandCode2 = $("#brandCode").val();
    let slicedCode2 = $("#slicedCode").val();
    let directCode2 = '';
    if(colorCode2!=null && saveCapacity2!=null){
        directCode2 = "P" + categoryCode2 + "B" + brandCode2 + "C" + colorCode2 + "V" + saveCapacity2 + slicedCode2;
        console.log(directCode2);
        $('#directCode').text(directCode2);
        // 나머지 인덱스에서 일치하는 directCode 확인
        var directItems = $('.brand.direct-item:not(:first-child)');
        console.log(directItems);
        var matchingDirectItems = directItems.filter(function() {
            return $(this).attr('data-direct-code') === directCode2;
        });

        if (matchingDirectItems.length > 0) {
            // 조회된 제품 코드에 대한 처리
            console.log('Matching product found:', directCode2);
            // 추가 작업 수행
            // ...

            // 조회된 항목을 화면에 표시하기 위해 display 속성 변경
            matchingDirectItems.css('display', 'block');
        } else {
            // 조회되지 않은 항목을 화면에서 숨김 처리
            directItems.css('display', 'none');
        }
    }
});

});

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





///////


$(document).ready(function() {
  const commaPrice = function() {
    const prices = document.querySelectorAll('[id^="renewPrice"]');
    for (var i = 0; i < prices.length; i++) {
      const price = parseInt(prices[i].innerHTML);
      const renewPrice = price.toLocaleString();
      prices[i].innerHTML = renewPrice;
    }
  };

  commaPrice();

  // Option 선택시 directCode 완성된 것을 $('#directCode').val에 저장
  $('.optionArea').on('click', 'li[name="colorCode"]', function() { // 컬러 선택시
    var selectedOptions = getSelectedOptions();

    // 추가작업
    let colorCode = selectedOptions.colorCode;
    let saveCapacity = selectedOptions.saveCapacity;
    let categoryCode = $("#categoryCode").val();
    let brandCode = $("#brandCode").val();
    let slicedCode = $("#slicedCode").val();
    let directCode = '';
    if (colorCode != null && saveCapacity != null) {
      directCode = "P" + categoryCode + "B" + brandCode + "C" + colorCode + "V" + saveCapacity + slicedCode;
      console.log(directCode);
      $('#directCode').text(directCode);
      $('#directStock').val('');

      // JSP 페이지의 리스트에서 일치하는 directCode 찾기
      var directListItems = $('#directList').find('.direct-item');
      directListItems.each(function() {
        var listItem = $(this);
        var listItemDirectCode = listItem.attr('data-direct-code');

        if (listItemDirectCode === directCode) {
          // 일치하는 항목을 찾았을 때의 동작을 여기에 작성합니다.
          // 예: 데이터 가져오기, 표시 업데이트 등
          var directPrice = listItem.attr('data-direct-price');
          var directStock = listItem.attr('data-direct-stock');
          console.log('Matching item found:', listItem);
          console.log('Direct Price:', directPrice);
          console.log('Direct Stock:', directStock);

          // 가격 업데이트
          listItem.find('.price-detail').text(directPrice);

          // 재고 업데이트
          $('#directStock').val(directStock);

          // 추가 작업 수행
          // ...
        }
      });

      // 일치하는 directCode가 없는 경우
      // 선택된 컬러에 대한 용량 버튼 비활성화
      var selectedColor = $('.optionArea li[name="colorCode"].selected');
      var selectedColorValue = selectedColor.attr('value');
      var nonMatchingCapacities = $('.optionArea input[name="saveCapacity"]').not(':checked');
      nonMatchingCapacities.prop('disabled', true);
      nonMatchingCapacities.closest('label.capacity').addClass('disabled');
      nonMatchingCapacities.closest('label.capacity').attr('title', '해당 색상은 선택할 수 없습니다.');

      // 선택된 컬러에 해당하는 용량 버튼 활성화
      var matchingCapacity = $('.optionArea input[name="saveCapacity"][value="' + saveCapacity + '"]');
      matchingCapacity.prop('disabled', false);
      matchingCapacity.closest('label.capacity').removeClass('disabled');
      matchingCapacity.closest('label.capacity').removeAttr('title');
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
      console.log(directCode2);
      $('#directCode').text(directCode2);

      // 나머지 인덱스에서 일치하는 directCode 확인
      var directItems = $('.brand.direct-item:not(:first-child)');
      console.log(directItems);
      var matchingDirectItems = directItems.filter(function() {
        return $(this).attr('data-direct-code') === directCode2;
      });

      if (matchingDirectItems.length > 0) {
        // 조회된 제품 코드에 대한 처리
        console.log('Matching product found:', directCode2);

        // 가격 업데이트
        var directPrice = matchingDirectItems.attr('data-direct-price');
        matchingDirectItems.find('.price-detail').text(directPrice);

        // 재고 업데이트
        var directStock = matchingDirectItems.attr('data-direct-stock');
        $('#directStock').val(directStock);

        // 추가 작업 수행
        // ...

        // 조회된 항목을 화면에 표시하기 위해 display 속성 변경
        matchingDirectItems.css('display', 'block');
      } else {
        // 조회되지 않은 항목을 화면에서 숨김 처리
        directItems.css('display', 'none');
      }
    }
  });
});

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


//
        
        
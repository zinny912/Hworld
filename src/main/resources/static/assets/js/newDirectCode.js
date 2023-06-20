$(document).ready(function() {
	

  $('.titlebox:first').show();
  // 나머지 리스트 요소를 숨김
  $('.titlebox:not(:first)').hide();


//초기값 준비
const selectedOptions = getSelectedOptions();
let initialColorCode = selectedOptions.colorCode;

if (initialColorCode != null) {
  updateCapacityOptions(initialColorCode); // 초기 선택한 색상에 대한 용량 옵션 업데이트
}


// 일치하는 directCode를 가진 titlebox를 표시하고 나머지는 숨김
// function updateTitleBoxVisibility(directCode) {
//   const directListItems = $('#directList').find('.direct-item');
//   let matchingItemFound = false;
//   directListItems.each(function() {
//     const listItem = $(this);
//     const listItemDirectCode = listItem.attr('data-direct-code');

//     if (listItemDirectCode === directCode) {
//       listItem.closest('.titlebox').show(); 
//       matchingItemFound = true;  
//     } else {
//       listItem.closest('.titlebox').hide();
//     }
    
//   });

// }






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


//색상옵션을 선택하거나, 용량옵션을 선택한 경우 이벤트
$('.optionArea').on('click', 'li[name="colorCode"], label.capacity', function() {

  //선택한 색상, 용량 옵션 input tag에 넣기
  if ($(this).is('li[name="colorCode"]')) {
    // li[name="colorCode"]를 클릭한 경우 처리 - 여기서 directCode를 만들어서 내보내기
    let colorCode = $(this).attr('value');
    $('#colorCode').val(colorCode);
  } else if ($(this).is('label.capacity')) {
    // label.capacity를 클릭한 경우 처리 - 여기서 directCode를 만들어서 내보내기
    let saveCapacity = $(this).prev('input[name="saveCapacity"]').val();
    $('#saveCapacity').val(saveCapacity);
  }

  //색상, 용량 옵션이 선택 됐는지 체크
  let selColor = $('#colorCode').val();
  let selCapacity = $('#saveCapacity').val();

  chkColor = isEmpty(selColor);
  chkCapa = isEmpty(selCapacity);

  //색상이 선택된 경우, 용량의 존재여부를 체크해서 버튼 disabled
  if (selColor != null) {
      updateCapacityOptions(selColor);
  }

  //색상, 용량이 빈값이 아니면 다이렉트 코드 조합.
  if(chkColor && chkCapa){
    let firstDiv = $('div.titlebox:first').attr('id');
    let category = firstDiv.substring(0, 3);
    let brand = firstDiv.substring(3, 5);
    let slicedCode = firstDiv.substring(11);
    let madeCode = category+brand+"C"+selColor+"V"+selCapacity+slicedCode;

    //반복문으로 조합된 directCode와 id값이 일치하는 .titlebox 찾기 및 data-selected 값 설정
    $('.titlebox').each(function(){
    let directCode = $(this).attr('id');
    console.log("directCode: ", directCode);
      
    //재고 체크
    let directStock = $('#item_'+directCode).attr('data-direct-stock');
    chkStock = isEmpty(directStock);
    console.log(chkStock);
    console.log("directStock: ", directStock);

      if(directCode === madeCode){
        //일치
        console.log("madeCode: ", madeCode);
        //일치하는 directCode를 찾았으므로, 여기서 div 태그의 data-selected 속성을 바꿔준다.
        $('.titlebox').attr("data-selected", 0);
        $(this).attr("data-selected", 1);
        //data-selected 속성 값에 따라 hide, show 설정을 해준다
        $('.titlebox[data-selected=0]').hide();
        $('.titlebox[data-selected=1]').show();


        if(directStock != 0){
          //재고 있으면 directCode, directStock 값 넣어주기
          $('#directStock').val(directStock);
          $('#directCode').val(directCode); // directCode 값을 설정
        }else{
          //재고 없으면 용량선택 옵션 해제 및 인접 label tag의 css 해제
          $('input[name=saveCapacity]').prop('checked', false);
          $('input[name=saveCapacity]').next('label').removeClass('btn-solid-after').addClass('btn-outline-custom');
          //값 초기화
          $('#directStock').val('');
          $('#directCode').val('');
        }

        return false;
      }else{
        //일치하지 않는 경우, 
        // $('#directStock').val('');
        // $('#directCode').val('');
        // $('input[name=saveCapacity]').prop('checked', false);
        // $('input[name=saveCapacity]').next('label').removeClass('btn-solid-after').addClass('btn-outline-custom');
      }

      if(chkStock){
        console.log('재고 있어여!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
      }


    })
  }
});
//색상옵션을 선택하거나, 용량옵션을 선택한 경우 이벤트 끝


//색상별 용량 옵션 존재 여부 체크
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
//색상별 용량 옵션 존재 여부 체크 끝


//선택 옵션 체크
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
//선택 옵션 체크 끝
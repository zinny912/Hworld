 //javaScript를 이용하여 리뷰업데이트창 뜨게하기
    //class에 reviewUpdate를 줘서 모든 수정창에 이벤트가 걸리게 함
    $('.reviewUpdate').click(function() {
        const reviewNum = $(this).data('review-num');
        const directName = $('.directNameValue').data('direct-name');

        // reviewNum에 해당하는 요소들의 값을 가져오기
        const $reviewSection = $('.customer-section[data-review="' + reviewNum + '"]');
        const contents = $reviewSection.find('p[name="contents"]').text();
        const orderNum = $reviewSection.find('#orderNum').val();
        const memberNum = $reviewSection.find('#memberNum').val();
        const rate = $reviewSection.data('rate');
        const modalRevName = document.getElementById('modalRevName');
		modalRevName.textContent = directName;
       	
        // 값 입력
        $('#modalRevName').val(directName);
        $('#modalRevContents').text(contents);
        $('#modalRevOrderNum').val(orderNum);
        $('#modalRevMemberNum').val(memberNum);
        $('#modalRevNum').val(reviewNum);
        $('#modalRevRate').val(rate);
        
       

    // 기존 별점 모양에 선택된 별점 표시
    const starId = 'modalRevStar' + rate;
    $('#' + starId).prop('checked', true);
	});

	// 별점 모양 변경 시 업데이트
	$('.modalRate input').change(function() {
	    const updatedRate = $(this).val();
	    $('#modalRevRate').val(updatedRate);
	});

// 수정된 데이터 전송
$('#updateReviewConfirm').click(function() {
    // 리뷰 아이디 가져오기
    let reviewId = $('#modalRevNum').val();
    
    // 수정된 데이터 가져오기
    let updatedRate = $('#modalRevRate').val();
    let updatedContents = $('#modalRevContents').val();
    let updatedOrderNum = $('#modalRevOrderNum').val();
    let updatedMemberNum = $('#modalRevMemberNum').val();
    
    
    // POST 방식으로 수정된 데이터 전송
    $.ajax({
        url: "/direct/reviewUpdate",
        type: "POST",
        data: {
            num: reviewId,
            rate: updatedRate,
            contents: updatedContents,
            orderNum: updatedOrderNum,
            memberNum: updatedMemberNum
        },
        success: function(response) {
			// 응답 데이터 확인
	
   	 	console.log(response);
		console.log('성공');
		location.reload();
		alert("수정이 완료되었습니다.^^*");
	   
        },
        error: function(xhr, status, error) {
            // 오류 처리
            console.log(error);
        }
    });
});

// 삭제 버튼 클릭 이벤트 처리
$('#reviewDel').click(function() {
    const num = $(this).data('review-num');
    $('#modalDelNum').val(num);
});

$('#confirmDelete').click(function() {
    console.log('123');
    let reviewId = $('#modalDelNum').val();
    alert(reviewId);
    // POST 방식으로 수정된 데이터 전송
    $.ajax({
        url: "/direct/reviewDelete",
        type: "POST",
        data: {
            num: reviewId
        },
        success: function(response) {
            // 응답 데이터 확인
          
            location.reload();
            alert("삭제가 완료되었습니다.^^*");
        },
        error: function(xhr, status, error) {
            // 오류 처리
            console.log(error);
        }
    });
});
// 휴대폰 상품 삭제 버튼 클릭 이벤트 처리
$('#productDelModal').click(function() {
    const dc = $('.direct-item').data('direct-code');
    $('#modalDelId').val(dc);
});

$('#productDelete').click(function() {
    let slicedId = $('#modalDelSC').val();
   
    // POST 방식으로 삭제 전송
    $.ajax({
        url: "/direct/directDelete",
        type: "POST",
        data: {
            slicedCode: slicedId,
            
        },
        success: function(response) {
            // 응답 데이터 확인
          
            $('#productdel').modal('hide');
            alert("삭제가 완료되었습니다.");
           location.href="./phoneList";
        },
        error: function(xhr, status, error) {
           //  오류 처리
            console.log(error);
        }
    });
});

// 악세사리 상품 삭제 버튼 클릭 이벤트 처리
$('#productDelModal2').click(function() {
    const dc = $('.direct-item').data('direct-code');
    $('#modalDelId2').val(dc);
});

$('#productDelete2').click(function() {
    let slicedId = $('#modalDelSC2').val();
   
    // POST 방식으로 수정된 데이터 전송
    $.ajax({
        url: "/direct/accessoryDelete",
        type: "POST",
        data: {
            slicedCode: slicedId,
            
        },
        success: function(response) {
            // 응답 데이터 확인
          
            $('#productdel2').modal('hide');
            alert("삭제가 완료되었습니다.");
           location.href="./phoneList";
        },
        error: function(xhr, status, error) {
           //  오류 처리
            console.log(error);
        }
    });
});


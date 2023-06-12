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
       	console.log(rate,'제발 나와줘');

        // 값 입력
        $('#modalRevName').val(directName);
        $('#modalRevContents').text(contents);
        $('#modalRevOrderNum').val(orderNum);
        $('#modalRevMemberNum').val(memberNum);
        $('#modalRevNum').val(reviewNum);
        $('#modalRevRate').val(rate);
        
        // 기존 별점 모양 초기화
    $('.modalRate input').prop('checked', false);

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
    let reviewId = $('#modalReviewNum').val();
    
    // 수정된 데이터 가져오기
    let updatedRate = $('#modalRevRate').val();
    let updatedContents = $('#contents').val();
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
	   
        },
        error: function(xhr, status, error) {
            // 오류 처리
            console.log(error);
        }
    });
});

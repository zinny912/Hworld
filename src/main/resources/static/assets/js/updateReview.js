$('#reviewUpdate').click(function(e) {
    e.preventDefault();
    
    // 리뷰 아이디 가져오기
    let num = $('#reviewNum').val();
   
    
    // GET 방식으로 기존 데이터 받아오기
    $.ajax({
        url: "/direct/getReview?slicedCode=" + slicedCode,
        type: "GET",
        data: {slicedCode: slicedCode },
        success: function(reviewVO) {
            // 서버에서 받아온 데이터를 표시
            // 받아온 데이터를 폼에 적용
            
            $('input[name="rate"][value="' + reviewVO.rate + '"]').prop('checked', true);
            $('#contents').val(reviewVO.contents);
            $('#orderNum').val(reviewVO.orderNum);
            $('#memberNum').val(reviewVO.memberNum);
            
            // 모달을 열기
            $('#updateReview').modal('show');
        },
        error: function(xhr, status, error) {
            // 오류 처리
            console.log(error);
        }
    });
});

// 수정된 데이터 전송
$('#updateReviewConfirm').click(function() {
    // 리뷰 아이디 가져오기
    let reviewId = $('#reviewNum').val();
    
    // 수정된 데이터 가져오기
    let updatedRate = $('input[name="rate"]:checked').val();
    let updatedContents = $('#contents').val();
    
    // POST 방식으로 수정된 데이터 전송
    $.ajax({
        url: "/direct/reviewUpdate",
        type: "POST",
        data: {
            num: reviewId,
            rate: updatedRate,
            contents: updatedContents
        },
        success: function(response) {
            // 수정 완료 후 처리 로직
            // TODO: 수정 완료 후의 동작 정의
        },
        error: function(xhr, status, error) {
            // 오류 처리
            console.log(error);
        }
    });
});

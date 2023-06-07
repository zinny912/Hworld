
 // 정렬 버튼 클릭 시 호출되는 함수
$(document).ready(function() {
  $("#sortingButton").click(function() {
    var sortingOrder = "ASC"; // 변경할 정렬 순서 (예: ASC 또는 DESC)
    
    // AJAX 호출
    $.ajax({
      url: "changeASC", // 서버의 요청 처리를 담당하는 URL
      type: "GET",
      data: { sortingOrder: sortingOrder }, // 요청 파라미터
      success: function(responseData) {
        // AJAX 요청 성공 시 처리할 코드 작성
        // 예: 서버로부터 받은 데이터를 화면에 업데이트
        // responseData를 이용한 화면 업데이트 로직 작성
      },
      error: function(xhr, status, error) {
        // AJAX 요청 실패 시 처리할 코드 작성
        console.log("AJAX 요청 실패: " + error);
      }
    });
  });
});
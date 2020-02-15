$(function() {

  // 新規登録モーダル
  
  $('.right-btn-new').click(function() {
    $('#signup-modal').fadeIn();
  });

  $('#close-modal').click(function() {
    $('#signup-modal').fadeOut();
  });
});

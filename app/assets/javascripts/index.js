$(document).ready(function(){
  $("wrapper").hide();
  $(window).on("scroll", function() {
      if ($(this).scrollTop() > 100) {
          $("wrapper").fadeIn("fast");
      } else {
          $("wrapper").fadeOut("fast");
      }
      scrollHeight = $(document).height();
      scrollPosition = $(window).height() + $(window).scrollTop();
      footHeight = $("footer").innerHeight(); //footerの高さ（＝止めたい位置）
      if ( scrollHeight - scrollPosition  <= footHeight ) {
          $("wrapper").css({
              "position":"absolute", 
              "bottom": footHeight + 20
          });
      } else { 
          $("wrapper").css({
              "position":"fixed",
              "bottom": "20px" 
          });
      }
  });
});


$(function(){
  //地域を選択
  $('.area_btn').click(function(){
      $('.area_overlay').show();
      $('.pref_area').show();
      var area = $(this).data('area');
      $('[data-list]').hide();
      $('[data-list="' + area + '"]').show();
  });
  
  //レイヤーをタップ
  $('.area_overlay').click(function(){
      prefReset();
  });
  
  //都道府県をクリック
  $('.pref_list [data-id]').click(function(){
      if($(this).data('id')){
          var id = $(this).data('id');
          //このidを使用して行いたい操作をしてください
          //都道府県IDに応じて別ページに飛ばしたい場合はこんな風に書く↓
          //window.location.href = 'https://kinocolog.com/pref/' + id;
          
          prefReset();
      }
  });
  
  //表示リセット
  function prefReset(){
      $('[data-list]').hide();
      $('.pref_area').hide();
      $('.area_overlay').hide();
  }
});

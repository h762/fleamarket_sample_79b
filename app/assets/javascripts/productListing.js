$(function(){
  $(".Base__body__area__item__informationArea__space").on('keyup', function(){
    $(".Base__body__area__item__informationArea__number").text($(this).val().length + "/1000");
  });
  
})
import "bootstrap";

$(document).ready(function(){
  $(".skill-choice").click(function(){
    $(this).toggleClass("active");
  });
});


$(".chb").change(function(){
  $(".chb").prop('checked',false);
  $(this).prop('checked',true);
});

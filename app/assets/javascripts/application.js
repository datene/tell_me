//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$('.show-tools').click(function() {
  $('.user-tools').toggleClass('hidden-tools');
  $('.user-dropdown').toggleClass('hidden-dropdown');
});

// $(document).ready(function() {
//   setTimeout(($('.home-container h1').text("Tell me a story_")), 2000);
// });
// 
$(".alert" ).fadeOut(3000);
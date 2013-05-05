$(document).ready(function() {
  // $(document).on('click', '#home', function() {
  //   change_active_item($(this))
  // });
  // $(document).on('click', '#signup', function() {
  //   change_active_item($(this)) 
  // });
  // $(document).on('click', '#signin', function() {
  //   change_active_item($(this))
  // });
});

function change_active_item(element) {
  element.closest('ul').find('li.active').removeClass('active');
  element.addClass('active');
}
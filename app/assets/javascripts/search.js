$(document).ready(function() {

  // click event of search phrase
  $('#search_btn').click(function(){
    $form = $(this).parents('form');
    $form.find('.facet_select option').prop('selected', false);
    $form.submit();
    return false;
  });

  // click event of facet select option
  $('.facet_select option').click(function(){
    if ($(this).data('selected')) {
      $(this).prop('selected', false);
    }
    $(this).parents('form').submit();
  });

});

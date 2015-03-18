$(document).on('click', '#submit-searches-button', function(){
  console.log("yup");
  var category = $('#category-select').val();
  var subcategory = $('#subcategory-select').val();
  var dancing = $('#dancebox').val();
  var under_21 = $('#21box').val();
  var food = $('#foodbox').val();
  var specials = $('#specialbox').val();
  var price_range = $('#price-select').val()
  $.ajax({
    type: "GET",
    url: '/venues/',
    dataType: 'script'
    })

}
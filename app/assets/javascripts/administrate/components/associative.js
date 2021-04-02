$(function() {
  $('.field-unit--belongs-to select').selectize({});
  $(".field-unit--has-many select").selectize({});
});
$(".add_fields").on("mouseup", function(e) {
  console.log("test");
  $('.field-unit--belongs-to select').selectize({});
  $(".field-unit--has-many select").selectize({});
});
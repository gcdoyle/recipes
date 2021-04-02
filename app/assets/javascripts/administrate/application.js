//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= popper
//= require selectize
//= require moment
//= require datetime_picker
//= require trix
//= require cocoon
//= require bootstrap-select
//= require_tree .

addEventListener("trix-initialize", event => {
  const { toolbarElement } = event.target
  const inputElement = toolbarElement.querySelector("input[name=href]")
  inputElement.type = "text"
  inputElement.pattern = "(https?://|/).+"
})
$(document).on('click', '.field-unit--nested-has-many .add_fields', () => {
  $(".field-unit--belongs-to select").each(function initializeSelectize(index, element) {
    var $element = $(element);
    $element.selectize({});
  });
  $(".field-unit--select select").each(function initializeSelectize(index, element) {
    var $element = $(element);
    $element.selectize({});
  });
});
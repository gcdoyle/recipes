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

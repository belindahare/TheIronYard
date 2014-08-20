# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function() {

$(".validate_hospital").click( function(){
  

if ($("#hospital_name").val() === ("") ) {
  $()
  alert("name or description can't be blank");
  .preventDefault();

  }
})





})

$(document).ready(function() {

  $(".validate_hospital").click( function() {
    if ($("#hospital_name").val() != ("") )

    var new_name = $(".student_name").val()
    if(new_name != ""){
      $(".students_list").append("<li>" + new_name + "</li>")
      $(".student_name").val("")
    }
  })

  $(".next_page").click( function() {
    var next_page = $(this).html()
    $(".hospital_list").addClass("hidden")
    $(".group_" + next_page).removeClass("hidden")
  })
 

  $('#hospital_name').keyup( function(){
    if($('#hospital_name').val() == ""){
      $('.error').show()
      $('.error').html("Please enter name!")
      $('.error').fadeOut(2000)
      $('input[type=submit]').attr('disabled', 'disabled');
    }
    else {
      $('input[type=submit]').removeAttr('disabled');
    }
  })



})

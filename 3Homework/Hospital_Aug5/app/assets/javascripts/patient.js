  $(document).ready(function() {

  $(".patient_search").click( function() {
    console.log($('.patient_search').val())
    $.ajax({
      url: "hospitals/id/patients",
      dataType: "script",
      type: "GET",
      data: {q: $('.patient_search').val()}
    })
  })
 $(document).on("click",'.examined, .xrayed, .recovery, .discharged',function() {  
    console.log("doodie")
    var statePath = $(this).attr("state_path")
    $.ajax({
      url: statePath,
      type: 'PUT',
      dataType: 'script' 
    })
  })  

})
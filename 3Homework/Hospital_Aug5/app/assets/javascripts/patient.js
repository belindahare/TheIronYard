  $(document).ready(function() {

  $(document).on("click", '.patient_search', function() {
    console.log($('.patients_search').val())
    $.ajax({
      url: "/patients",
      dataType: "script",
      type: "GET",
      data: {q: $('.patients_search').val()}
    })
  })
 $(document).on("click",'.examined, .xrayed, .recovery, .discharged',function() {  
    var statePath = $(this).attr("state_path")
    $.ajax({
      url: statePath,
      type: 'PUT',
      dataType: 'script' 
    })
  })  

})
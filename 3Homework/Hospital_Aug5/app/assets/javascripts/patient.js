  $(document).ready(function() {

  $(".patient_search").click( function() {
    console.log($('.patient_search').val())
    $.ajax({
      url: "/patients",
      dataType: "script",
      type: "GET",
      data: {q: $('.patient_search').val()}
    })
  })


})
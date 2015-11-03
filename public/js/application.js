$(document).ready(function() {

  $(".category-link").on("click", function(event) {
    event.preventDefault();
    // debugger

    // $(this).parents(".category").children(".items-list").toggle();
    $(this).parent().next().toggle()

  })

  // $(document).on('click', "a.category-link", function(event) {
  //   event.preventDefault();
  //       // var link = $(this);
  //       var request = $.ajax({
  //         method:'get',
  //         url: $(event.target).attr("href"),
  //       })
  //       request.done(function(data) {
  //         if ( $(".item-list").length) {
  //           $(".item-list").toggle();
  //         } else {
  //           $(data).insertAfter(link);
  //         }
  //       });
  //     }
  // });

});

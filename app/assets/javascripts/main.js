  $(document).ready(function() {

    var player = $("#player").html();
    if (player == 1){
      $(".player_1").find(".ship").addClass("show_ship");
      $(".player_2").find(".ship").removeClass("show_ship");
    }
    else
    {
      $(".player_2").find(".ship").addClass("show_ship");
      $(".player_1").find(".ship").removeClass("show_ship");
    };

    




  });
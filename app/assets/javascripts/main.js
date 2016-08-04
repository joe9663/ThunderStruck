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

    var player_1_shots = $("#player_1_shots").html().split("-");
    for (var i = 0; i < player_1_shots.length; i++) {
      var x_cord = player_1_shots[i][0];
      var y_cord = player_1_shots[i][1];
      $(".player_2").find("#" + y_cord).find("#" + x_cord).addClass("shot");
    }

    var player_2_shots = $("#player_2_shots").html().split("-");
    for (var i = 0; i < player_2_shots.length; i++) {
      var x_cord = player_2_shots[i][0];
      var y_cord = player_2_shots[i][1];
      $(".player_1").find("#" + y_cord).find("#" + x_cord).addClass("shot");
    }


  });

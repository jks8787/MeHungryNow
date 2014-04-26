$(document).ready(function() {
  var MeHungryNow = MeHungryNow || {};
  MeHungryNow.User = {};

  MeHungryNow.User.submitFitGoal = function(){
    $('button').on('click', MeHungryNow.User.setFitGoal);
  };

  MeHungryNow.User.setFitGoal = function(event){
    var $button = event.target;
    event.preventDefault();

    $.ajax({
      type: "PUT",
      url: '/users/update',
      data: {fit_goal: $button.id },
      dataType: 'json',
      })
      .fail(function(response) {
        console.log("fail");
      })
      .done(function(response){
        alert("you fit goal is set");
      });

    return false;
  };

  MeHungryNow.User.submitFitGoal();
});

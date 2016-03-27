//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery.slotmachine
//= require_tree .

$(document).ready(function(){
  var backend = $("#casino1").slotMachine({
    active  : 0,
    delay : 500
  });

  var frontend = $("#casino2").slotMachine({
    active  : 1,
    delay : 500
  });

  additional = $("#casino3").slotMachine({
    active  : 2,
    delay : 500
  });

  var started = 0;

  $("#slotMachineButtonShuffle").click(function(){
    started = 3;
    backend.shuffle();
    frontend.shuffle();
    additional.shuffle();
  });

  $("#slotMachineButtonStop").click(function(){
    switch(started){
      case 3:
        backend.stop();
        break;
      case 2:
        frontend.stop();
        break;
      case 1:
        additional.stop();
        break;
    }
    started--;
  });
});

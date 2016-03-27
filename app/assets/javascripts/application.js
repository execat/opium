//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery.slotmachine
//= require_tree .

$(document).ready(function(){
  var results = $("#results").hide();
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
        var filterOutSlots = function(string) {
          return(string !== "slot" && string !== "slotMachineGradient" &&
              string !== "slotMachineBlurFast");
        };
        var removeDash = function(string) {
          return(string.split("-")[1]);
        };
        var output = 
          [(backend.$tiles[backend.active].className.split(" ").
            filter(filterOutSlots)).map(removeDash)[0],
          (frontend.$tiles[frontend.active].className.split(" ").
            filter(filterOutSlots)).map(removeDash)[0],
          (additional.$tiles[additional.active].className.split(" ").
            filter(filterOutSlots)).map(removeDash)[0]];
        $('#results').show();

        var backend_hash = backend_data[output[0]];
        var frontend_hash = frontend_data[output[1]];
        var additional_hash = additional_data[output[2]];

        console.log(backend_hash);
        console.log(frontend_hash);
        console.log(additional_hash);

        $("#backend_language").text(backend_hash.language);
        $("#backend_website").text(backend_hash.website);
        // $("#backend_example_projects").text(backend_hash.example_projects);
        $("#backend_wikipedia").text(backend_hash.wikipedia);
        $("#backend_github").text(backend_hash.github);
        $("#backend_additional_info").text(backend_hash.additional_info);

        var backend_example_table = $('#backend_example_projects');
        $("<tr><th>Name </th><td>" +
            backend_hash.example_projects[0].name +
            "</td></tr><tr><th>Github </th><td>" +
            backend_hash.example_projects[0].github +
            "</td></tr><tr><th>Website</th><td>" +
            backend_hash.example_projects[0].website +
            "</td></tr><tr><th>License</th><td>" +
            backend_hash.example_projects[0].license +
            "</td></tr><tr><th>Version</th><td>" +
            backend_hash.example_projects[0].version +
            "</td></tr><tr><th>More info</th><td>" +
            backend_hash.example_projects[0].more_info +
            "</td></tr>").appendTo("#backend_example_projects");


        $("#frontend_language").text(frontend_hash.language);
        $("#frontend_website").text(frontend_hash.website);
        // $("#frontend_example_projects").text(frontend_hash.example_projects);
        $("#frontend_wikipedia").text(frontend_hash.wikipedia);
        $("#frontend_github").text(frontend_hash.github);
        $("#frontend_additional_info").text(frontend_hash.additional_info);

        var frontend_example_table = $('#frontend_example_projects');
        $("<tr><th>Name </th><td>" +
            frontend_hash.example_projects[0].name +
            "</td></tr><tr><th>Github </th><td>" +
            frontend_hash.example_projects[0].github +
            "</td></tr><tr><th>Website</th><td>" +
            frontend_hash.example_projects[0].website +
            "</td></tr><tr><th>License</th><td>" +
            frontend_hash.example_projects[0].license +
            "</td></tr><tr><th>Version</th><td>" +
            frontend_hash.example_projects[0].version +
            "</td></tr><tr><th>More info</th><td>" +
            frontend_hash.example_projects[0].more_info +
            "</td></tr>").appendTo("#frontend_example_projects");

        $("#additional_data_language").text(additional_hash.language);
        $("#additional_data_website").text(additional_hash.website);
        // $("#additional_data_example_projects").text(additional_hash.example_projects);
        $("#additional_data_wikipedia").text(additional_hash.wikipedia);
        $("#additional_data_github").text(additional_hash.github);
        $("#additional_data_additional_info").text(additional_hash.additional_info);


        if(additional_hash.example_projects) {
        var additional_example_table = $('#additional_example_projects');
        $("<tr><th>Name </th><td>" +
            additional_hash.example_projects[0].name +
            "</td></tr><tr><th>Github </th><td>" +
            additional_hash.example_projects[0].github +
            "</td></tr><tr><th>Website</th><td>" +
            additional_hash.example_projects[0].website +
            "</td></tr><tr><th>License</th><td>" +
            additional_hash.example_projects[0].license +
            "</td></tr><tr><th>Version</th><td>" +
            additional_hash.example_projects[0].version +
            "</td></tr><tr><th>More info</th><td>" +
            additional_hash.example_projects[0].more_info +
            "</td></tr>").appendTo("#additional_example_projects");
        }

        break;
    }
    started--;
  });
});

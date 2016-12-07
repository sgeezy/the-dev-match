// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
/* global $*/
//An attempt to introduce API call for bootswatch
// $(document).ready(function(){
//     $.getJSON("https://bootswatch.com/api/3.json",
//         "Cerulean"
//         );
    // function (data) {
    //   var themes = data.themes;
    //   var select = "15";
    //   select.show();
    //   $(".alert").toggleClass("alert-info alert-success");
    //   $(".alert h4").text("Success!");
      
    //   themes.forEach(function(value, index){
    //     select.append($("<option />")
    //           .val(index)
    //           .text(value.name));
    //   });
      
    //   select.change(function(){
    //     var theme = themes[$(this).val()];
    //     $("link").attr("href", theme.css);
    //     $("h1").text(theme.name);
    //   }).change();
    
    // }, "json").fail(function(){
    //     $(".alert").toggleClass("alert-info alert-danger");
    //     $(".alert h4").text("Failure!");
    // }); 
});
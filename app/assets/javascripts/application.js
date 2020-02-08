// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require core/jquery.min
//= require core/popper.min
//= require turbolinks
//= require core/bootstrap-material-design.min
//= require plugins/jquery.sharrre
//= require plugins/moment.min
//= require plugins/nouislider.min
//= require plugins/bootstrap-datetimepicker
//= require discogs-marketplace-js/search
//= require discogs-marketplace-js/util
//= require material-kit
//= require material-kit.min
//= require toastr
//= require activestorage
//= require toastr.min
//= require lightgallery
//= require_tree .

$(document).on('turbolinks:load', function(){
  var gallery = $("#lightGallery").lightGallery({
    mode      : 'slide',  // Type of transition between images. Either 'slide' or 'fade'.
  });
});

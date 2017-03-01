// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
// $(function() {
//   $('a.upvote-image').on('click', function(event) {
//     event.preventDefault();
//
//     var $this = $(this);
//
//     $.ajax({
//       url: $this.attr('href'),
//       method: $this.data('method'),
//       dataType: 'json'
//     }).done(function(returnData) {
//       $this.find('i').text(returnData.count);
//       $('a.downvote-image').find('i').text() - 1;
//     });
//     return false;
//   });
//
//   $('a.downvote-image').on('click', function(event) {
//     event.preventDefault();
//
//     var $this = $(this);
//
//     $.ajax({
//       url: $this.attr('href'),
//       method: $this.data('method'),
//       dataType: 'json'
//     }).done(function(returnData) {
//       $this.find('i').text(returnData.count);
//       $('a.upvote-image').find('i').text() - 1;
//     });
//     return false;
//   });
// });

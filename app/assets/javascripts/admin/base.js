// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require sweetalert
//= require marked
//= require sweet-alert-confirm
//= require bootstrap-sprockets

//= require react
//= require react_ujs
//= require components



$(document).on('ready page:load', function() {
  marked.setOptions({
    gfm: true,
    tables: true,
    pedantic: false,
    sanitize: false,
    smartLists: true,
    smartypants: false,
    langPrefix: 'lang-'
  });

  function updateMarkdown() {
    $('#markdown').html(marked($('#page_content').val()));
  }
  updateMarkdown();
  $('#page_content').keypress(updateMarkdown);
  $('#page_content').on('input propertychange paste', updateMarkdown);
});

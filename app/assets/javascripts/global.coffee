Turbolinks.enableProgressBar();

ready = ->
  $(".accordion").accordion({active: false, collapsible: true});
  $('.markup').wysihtml5();

$(document).ready(ready);
$(document).on('page:load', ready);

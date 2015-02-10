Turbolinks.enableProgressBar();

ready = -> $(".accordion").accordion({active: false, collapsible: true});

$(document).ready(ready);
$(document).on('page:load', ready);

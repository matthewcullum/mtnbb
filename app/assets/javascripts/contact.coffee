# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  jQuery ->
  completer = new GmapsCompleter
    inputField: '#gmaps-input-address'
    errorField: '#gmaps-error'

  completer.autoCompleteInit
    country: "us"
  $('input').focus ->
    $(this).parent('div').removeClass('has-error').children('.help-block').remove()
$(document).ready(ready);
$(document).on('page:load', ready);
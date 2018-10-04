# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  console.log('color')
  $("#new_article").on("ajax:success", (e, data, status, xhr) ->
    console.log('ok')
  ).on "ajax:error", (e, xhr, status, error) ->
    console.log('error')

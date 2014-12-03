# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

chosen = ->
  $('#book_author_ids').chosen
    allow_single_deselect: true
    no_results_text: 'No results matched'
    width: '500px'
$(document).on 'ready page:change', chosen


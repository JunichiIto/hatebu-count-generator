$ ->
  $('.js-select-on-focus').on 'focus', ->
    $(@).select()

  $('.js-focus-on-load').focus()

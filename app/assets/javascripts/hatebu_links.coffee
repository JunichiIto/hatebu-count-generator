$ ->
  $('.js-select-on-focus').on 'focus', ->
    $(@).select()

  $('.js-focus-on-load').focus()

  $('.js-clear-all').on 'click', ->
    $('input[type=text]').val('')
    $('.btn-submit').click()
    return false
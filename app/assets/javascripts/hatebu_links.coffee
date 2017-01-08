$ ->
  $('.js-select-on-focus').on 'focus', ->
    $(@).select()

  $('.js-focus-on-load').focus()

  $('.js-clear-all').on 'click', ->
    $('input[type=text]').val('')
    $('.btn-submit').click()
    return false

  $('.js-submit-on-paste').on 'paste', ->
    element = this
    setTimeout (->
      text = $(element).val()
      console.log text
      $('.btn-submit').click()
      return
    ), 100
    return

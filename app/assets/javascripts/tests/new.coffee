class @NewQuestionInTest
  constructor: (newButton, element) ->
    $(newButton).click ->
      $(element).show()

class @NewQuestionInChallenge
  constructor: (newButton, element) ->
    $(newButton).click ->
      $(element).show()

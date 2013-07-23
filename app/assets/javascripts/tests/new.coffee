$ ->
  class NewQuestionInTest
    constructor: ->
      $("#new-question-btn").click ->
        $("#question-form").show()

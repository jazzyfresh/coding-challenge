# jQuery ->
#   class NewQuestionInTest
#     # constructor: (newButton, element) ->
#     #   $(newButton).click ->
#     #     $(element).show()
#     constructor:  ->
#       $("#new-question-btn").click ->
#         $("#question-form").show()

# TODO: determine why initializeTestForm does not appear to be loading
$ ->
  Window.initializeTestForm = ->
    $("#new-question-btn").click ->
      $("#question-form").show()

require 'spec_helper.rb'
require 'question.rb'

describe Question do
  it "should not save post without title" do
    question = Question.new
    expect(question.save).to be_false
  end
end

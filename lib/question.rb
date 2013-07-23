class Question
  def initialize(title="", text, difficulty_level=0, category="")
    @title = title
    @text = text
    @difficulty_level = difficulty_level
    @category = category
  end
  attr_accessor :title, :text, :difficulty_level, :category
end
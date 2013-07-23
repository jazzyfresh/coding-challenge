class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
  	@question = Question.new(question_params)

  	if @question.save
  	  redirect_to @question
    else
      render 'new'
    end
  end

  def show
  	@question = Question.find(params[:id])
  end

  def edit
  	@question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(params[:question].permit(:title, :text))
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path
  end

  def index
  	@questions = Question.all
  end

  private
  def question_params
  	params.require(:question).permit(:title, :text)
  end

end

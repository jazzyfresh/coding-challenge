class ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
  end

  def show
    set_challenge
  end

  def new
    @challenge = Challenge.new
  end

  def edit
    set_challenge
  end

  def create
    @challenge = Challenge.new(challenge_params)

    if @challenge.save
      redirect_to @challenge
    else
      render 'new'
    end
  end

  def update
    set_challenge

    if @challenge.update(challenge_params)
      redirect_to @challenge
    else
      render 'edit'
    end
  end

  def destroy
    set_challenge

    @challenge.destroy
    redirect_to challenges_path
  end

  private

    def set_challenge
      @challenge = Challenge.find(params[:id])
    end

    def challenge_params
      params.require(:challenge).permit(:title, :genre)
    end
end

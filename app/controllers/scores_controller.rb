class ScoresController < ApplicationController

  def index
    @scores = Score.all
  end

  def show
    @score = Score.find_by(id: params[:id])
  end

  def new
  end

  def create
    @score = Score.new
    @score.score = params[:score]
    @score.quiz_id = params[:quiz_id]
    @score.user_id = params[:user_id]

    if @score.save
      redirect_to "/scores/#{ @score.id }"
    else
      render 'new'
    end
  end

  def edit
    @score = Score.find_by(id: params[:id])
  end

  def update
    @score = Score.find_by(id: params[:id])
    @score.score = params[:score]
    @score.quiz_id = params[:quiz_id]
    @score.user_id = params[:user_id]

    if @score.save
      redirect_to "/scores/#{ @score.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @score = Score.find_by(id: params[:id])
    @score.destroy


    redirect_to "/scores"
  end
end

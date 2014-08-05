class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find_by(id: params[:id])
  end

  def new
  end

  def create
    @quiz = Quiz.new
    @quiz.answer = params[:answer]
    @quiz.score_id = params[:score_id]

    if @quiz.save
      redirect_to "/quizzes/#{ @quiz.id }"
    else
      render 'new'
    end
  end

  def edit
    @quiz = Quiz.find_by(id: params[:id])
  end

  def update
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.answer = params[:answer]
    @quiz.score_id = params[:score_id]

    if @quiz.save
      redirect_to "/quizzes/#{ @quiz.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.destroy


    redirect_to "/quizzes"
  end
end

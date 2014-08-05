class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by(id: params[:id])
  end

  def new
  end

  def create
    @question = Question.new

    if @question.save
      redirect_to "/questions/#{ @question.id }"
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find_by(id: params[:id])
  end

  def update
    @question = Question.find_by(id: params[:id])

    if @question.save
      redirect_to "/questions/#{ @question.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find_by(id: params[:id])
    @question.destroy


    redirect_to "/questions"
  end
end

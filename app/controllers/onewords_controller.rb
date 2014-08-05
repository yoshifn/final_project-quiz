class OnewordsController < ApplicationController

  def index
    @onewords = Oneword.all
  end

  def show
    @oneword = Oneword.find_by(id: params[:id])
  end

  def new
  end

  def create
    @oneword = Oneword.new
    @oneword.answer = params[:answer]
    @oneword.content = params[:content]
    @oneword.score = params[:score]

    if @oneword.save
      redirect_to "/onewords/#{ @oneword.id }"
    else
      render 'new'
    end
  end

  def edit
    @oneword = Oneword.find_by(id: params[:id])
  end

  def update
    @oneword = Oneword.find_by(id: params[:id])
    @oneword.answer = params[:answer]
    @oneword.content = params[:content]
    @oneword.score = params[:score]

    if @oneword.save
      redirect_to "/onewords/#{ @oneword.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @oneword = Oneword.find_by(id: params[:id])
    @oneword.destroy


    redirect_to "/onewords"
  end
end

class TruefalsesController < ApplicationController

  def index
    @truefalses = Truefalse.all
  end

  def show
    @truefalse = Truefalse.find_by(id: params[:id])
  end

  def new
  end

  def create
    @truefalse = Truefalse.new
    @truefalse.answer = params[:answer]
    @truefalse.content = params[:content]
    @truefalse.score = params[:score]

    if @truefalse.save
      redirect_to "/truefalses/#{ @truefalse.id }"
    else
      render 'new'
    end
  end

  def edit
    @truefalse = Truefalse.find_by(id: params[:id])
  end

  def update
    @truefalse = Truefalse.find_by(id: params[:id])
    @truefalse.answer = params[:answer]
    @truefalse.content = params[:content]
    @truefalse.score = params[:score]

    if @truefalse.save
      redirect_to "/truefalses/#{ @truefalse.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @truefalse = Truefalse.find_by(id: params[:id])
    @truefalse.destroy


    redirect_to "/truefalses"
  end
end

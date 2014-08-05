class TrueOrFalsesController < ApplicationController

  def index
    @true_or_falses = TrueOrFalse.all
  end

  def show
    @true_or_false = TrueOrFalse.find_by(id: params[:id])
  end

  def new
  end

  def create
    @true_or_false = TrueOrFalse.new
    @true_or_false.answer = params[:answer]

    if @true_or_false.save
      redirect_to "/true_or_falses/#{ @true_or_false.id }"
    else
      render 'new'
    end
  end

  def edit
    @true_or_false = TrueOrFalse.find_by(id: params[:id])
  end

  def update
    @true_or_false = TrueOrFalse.find_by(id: params[:id])
    @true_or_false.answer = params[:answer]

    if @true_or_false.save
      redirect_to "/true_or_falses/#{ @true_or_false.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @true_or_false = TrueOrFalse.find_by(id: params[:id])
    @true_or_false.destroy


    redirect_to "/true_or_falses"
  end
end

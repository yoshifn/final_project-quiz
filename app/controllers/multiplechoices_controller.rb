class MultiplechoicesController < ApplicationController

  def index
    @multiplechoices = Multiplechoice.all
  end

  def show
    @multiplechoice = Multiplechoice.find_by(id: params[:id])
  end

  def new
  end

  def create
    @multiplechoice = Multiplechoice.new
    @multiplechoice.answer = params[:answer]
    @multiplechoice.content = params[:content]
    @multiplechoice.score = params[:score]

    if @multiplechoice.save
      redirect_to "/multiplechoices/#{ @multiplechoice.id }"
    else
      render 'new'
    end
  end

  def edit
    @multiplechoice = Multiplechoice.find_by(id: params[:id])
  end

  def update
    @multiplechoice = Multiplechoice.find_by(id: params[:id])
    @multiplechoice.answer = params[:answer]
    @multiplechoice.content = params[:content]
    @multiplechoice.score = params[:score]

    if @multiplechoice.save
      redirect_to "/multiplechoices/#{ @multiplechoice.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @multiplechoice = Multiplechoice.find_by(id: params[:id])
    @multiplechoice.destroy


    redirect_to "/multiplechoices"
  end
end

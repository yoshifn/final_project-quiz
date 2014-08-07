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
  
  def main
  end
  
  def bahai
  end
  
  def grade
    @user = User.find_by_name(session['username'])
    @score = 0
    if params['q1'] == "b"
      @score = @score + 1   
    end
    if params['q2'] == "a"
      @score = @score + 1   
    end
    if params['q3'] == "a"
      @score = @score + 1   
    end
    if params['q4'] == "b"
      @score = @score + 1   
    end
    if params['q5'] == "b"
      @score = @score + 1   
    end
    if params['q6'] == "b"
      @score = @score + 1   
    end
    if params['q7'] == "b"
      @score = @score + 1   
    end
    if params['q8'] == "a"
      @score = @score + 1   
    end
    if params['q9'] == "b"
      @score = @score + 1   
    end
    if params['q10'] == "a"
      @score = @score + 1  
    end
    if params['q11'] == "a"
      @score = @score + 2 
    end
    if params['q12'] == "d"
      @score = @score + 2 
    end
    if params['q13'] == "d"
      @score = @score + 2
    end
    if params['q14'] == "b"
      @score = @score + 2
    end
   if params['q15'] == "b"
      @score = @score + 2
    end 
   if params['q16'] == "c"
      @score = @score + 2
    end       
   if params['q17'] == "b"
      @score = @score + 2
    end      
   if params['q18'] == "a"
      @score = @score + 2
    end           
   if params['q19'] == "b"
      @score = @score + 2
    end                 
   if params['q20'] == "c"
      @score = @score + 2
    end           
   if params['q21'] == "Barev"
     @score = @score + 3
   elsif params['q21'] == "Parev"
     @score = @score + 3
    end   
    if params['q22'] == "Dram"
      @score = @score + 3
   end
    if params['q23'] == "Sevan"
      @score = @score + 3
   end
    if params['q24'] == "Armenia"
      @score = @score + 3
   end
    if params['q25'] == "Hye"
      @score = @score + 3
  end
    if params['q26'] == "Kardashian"
      @score = @score + 3
  end
    if params['q26'] == "Colombia"
      @score = @score + 3
  end    
    if params['q27'] == "Colombia"
      @score = @score + 3
  end    
    if params['q28'] == "1918"
      @score = @score + 3
  end        
    if params['q29'] == "Caucasus"
      @score = @score + 3
  end 
    if params['q30'] == "Nepal"
      @score = @score + 3
  end                
    @user.score = @score 
    @user.save
  end
  
  def bahai_grade
    @user = User.find_by_name(session['username'])
    @score = 0
    if params['q1'] == "a"
      @score = @score + 1   
    end
    if params['q2'] == "b"
      @score = @score + 1   
    end
    if params['q3'] == "b"
      @score = @score + 1   
    end
    if params['q4'] == "a"
      @score = @score + 1   
    end
    if params['q5'] == "a"
      @score = @score + 1   
    end
    if params['q6'] == "b"
      @score = @score + 1   
    end
    if params['q7'] == "a"
      @score = @score + 1   
    end
    if params['q8'] == "b"
      @score = @score + 1   
    end
    if params['q9'] == "b"
      @score = @score + 1   
    end
    if params['q10'] == "b"
      @score = @score + 1  
    end
    if params['q11'] == "a"
      @score = @score + 2 
    end
    if params['q12'] == "c"
      @score = @score + 2 
    end
    if params['q13'] == "a"
      @score = @score + 2
    end
    if params['q14'] == "d"
      @score = @score + 2
    end
   if params['q15'] == "d"
      @score = @score + 2
    end 
   if params['q16'] == "b"
      @score = @score + 2
    end       
   if params['q17'] == "c"
      @score = @score + 2
    end      
   if params['q18'] == "d"
      @score = @score + 2
    end           
   if params['q19'] == "b"
      @score = @score + 2
    end                 
   if params['q20'] == "a"
      @score = @score + 2
        if params['q21'] == "12"
     @score = @score + 3
    end   
    if params['q22'] == "9"
      @score = @score + 3
   end
    if params['q23'] == "November"
      @score = @score + 3
   end
    if params['q24'] == "Zionism"
      @score = @score + 3
    elsif params ['q24'] == "Zionists"
      @score = @score + 3
   end
    if params['q25'] == "85"
      @score = @score + 3
  end
    if params['q26'] == "14"
      @score = @score + 3
  end
    if params['q27'] == "Persia"
      @score = @score + 3
    elsif params['q27'] == "Iran"
      @score = @score + 3
  end    
    if params['q28'] == "Bahá'u'lláh"
      @score = @score + 3
  end    
    if params['q29'] == "1918"
      @score = @score + 3
  end        
    if params['q30'] == "Hawaii"
      @score = @score + 3
    elsif params['q30'] == "Alaska"
      @score = @score + 3
  end                
    end           
    @user.score = @score 
    @user.save
  end
end

class LoginController < ApplicationController
  def login
  end 
  
  def sign_in
    u = User.find_by_name(params['username'])
    if u && u.authenticate(params['password'])    
    session['username'] = params['username']
    redirect_to '/home'
    else
    redirect_to '/login'
    end
  end
  
  def sign_out
    reset_session
    redirect_to '/login'
  end
end
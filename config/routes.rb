Rails.application.routes.draw do
  # Routes for the Oneword resource:
  # CREATE
  
  root :to => 'application#home'

  get '/new_oneword' => 'onewords#new'
  get '/create_oneword' => 'onewords#create'

  # READ
  get '/onewords' => 'onewords#index'
  get '/onewords/:id' => 'onewords#show'

  # UPDATE
  get '/onewords/:id/edit' => 'onewords#edit'
  get '/onewords/:id/update' => 'onewords#update'

  # DELETE
  get '/onewords/:id/destroy' => 'onewords#destroy'
  #------------------------------

  # Routes for the Multiplechoice resource:
  # CREATE
  get '/new_multiplechoice' => 'multiplechoices#new'
  get '/create_multiplechoice' => 'multiplechoices#create'

  # READ
  get '/multiplechoices' => 'multiplechoices#index'
  get '/multiplechoices/:id' => 'multiplechoices#show'

  # UPDATE
  get '/multiplechoices/:id/edit' => 'multiplechoices#edit'
  get '/multiplechoices/:id/update' => 'multiplechoices#update'

  # DELETE
  get '/multiplechoices/:id/destroy' => 'multiplechoices#destroy'
  #------------------------------

  # Routes for the Truefalse resource:
  # CREATE
  get '/new_truefalse' => 'truefalses#new'
  get '/create_truefalse' => 'truefalses#create'

  # READ
  get '/truefalses' => 'truefalses#index'
  get '/truefalses/:id' => 'truefalses#show'

  # UPDATE
  get '/truefalses/:id/edit' => 'truefalses#edit'
  get '/truefalses/:id/update' => 'truefalses#update'

  # DELETE
  get '/truefalses/:id/destroy' => 'truefalses#destroy'
  #------------------------------

  # Routes for the True_or_false resource:
  # CREATE
  get '/new_true_or_false' => 'true_or_falses#new'
  get '/create_true_or_false' => 'true_or_falses#create'

  # READ
  get '/true_or_falses' => 'true_or_falses#index'
  get '/true_or_falses/:id' => 'true_or_falses#show'

  # UPDATE
  get '/true_or_falses/:id/edit' => 'true_or_falses#edit'
  get '/true_or_falses/:id/update' => 'true_or_falses#update'

  # DELETE
  get '/true_or_falses/:id/destroy' => 'true_or_falses#destroy'
  #------------------------------

  # Routes for the Quiz resource:
  # CREATE
  get '/new_quiz' => 'quizzes#new'
  get '/create_quiz' => 'quizzes#create'

  # READ
  get '/quizzes' => 'quizzes#index'
  get '/quizzes/:id' => 'quizzes#show'

  # UPDATE
  get '/quizzes/:id/edit' => 'quizzes#edit'
  get '/quizzes/:id/update' => 'quizzes#update'

  # DELETE
  get '/quizzes/:id/destroy' => 'quizzes#destroy'
  
  get '/main' => 'quizzes#main'
  #------------------------------

  # Routes for the Question resource:
  # CREATE
  get '/new_question' => 'questions#new'
  get '/create_question' => 'questions#create'

  # READ
  get '/questions' => 'questions#index'
  get '/questions/:id' => 'questions#show'

  # UPDATE
  get '/questions/:id/edit' => 'questions#edit'
  get '/questions/:id/update' => 'questions#update'

  # DELETE
  get '/questions/:id/destroy' => 'questions#destroy'
  #------------------------------

  # Routes for the Score resource:
  # CREATE
  get '/new_score' => 'scores#new'
  get '/create_score' => 'scores#create'

  # READ
  get '/scores' => 'scores#index'
  get '/scores/:id' => 'scores#show'

  # UPDATE
  get '/scores/:id/edit' => 'scores#edit'
  get '/scores/:id/update' => 'scores#update'

  # DELETE
  get '/scores/:id/destroy' => 'scores#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------
  get '/home' => 'application#home'
  get '/login' => 'login#login'
  get '/sign_in' => 'login#sign_in'
  get '/sign_out' => 'login#sign_out'
  get '/grade' => 'quizzes#grade'
  get '/bahai' => 'quizzes#bahai'
  get '/grade_bahai' => 'quizzes#grade_bahai'
  get '/divination' => 'quizzes#divination'
  get '/grade_fortune' => 'quizzes#grade_fortune'
  get '/bricks' => 'quizzes#bricks'
  get '/grade_bricks' => 'quizzes#grade_bricks'
end

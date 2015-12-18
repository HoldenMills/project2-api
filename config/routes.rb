Rails.application.routes.draw do
  post '/register' => 'auth#register'
  # patch '/confirm' => 'auth#confirm'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  # router.route('/logout').
  # all(authCtrl.logout.all);

  resources :users, except: [:new, :edit]

  # resources :profiles, except: [:new, :edit]
  resources :profiles
end

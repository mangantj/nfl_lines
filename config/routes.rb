NflLines::Application.routes.draw do

  root :to => 'users#index'
  
  resources :users
  resources :weeks, :only => [:index] do
    member do 
      get "games"
      put 'submit_user_picks'
    end
  end
  resources :games
end

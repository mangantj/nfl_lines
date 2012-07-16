NflLines::Application.routes.draw do

  devise_for :users

  root :to => "weeks#index"
  
  resources :weeks, :only => :index do
    member do 
      get "games"
      put 'submit_user_picks'
    end
  end
end

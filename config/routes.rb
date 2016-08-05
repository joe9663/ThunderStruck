Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :games

  root 'users#index'

  resources :users, except: :destroy

  resources :sessions, only: [:create, :destroy, :new]

  post '/games/:id/shots' => 'games#shots', as: 'games_shot'

  get '/games/:id/winner' => 'games#winner', as: 'games_winner'

end

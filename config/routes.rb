Rails.application.routes.draw do

  post 'users/confirm' => 'users#confirm'
  
  post 'users/new' => 'users#new'
  
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do 
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
    
    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end
  
  resources :topics do
    resources :sponsored_posts, except: [:index]
  end

  resources :users, only: [:new, :create, :show]
  
  get 'about' => 'welcome#about'

  root 'welcome#index'

  resources :sessions, only: [:new, :create, :destroy]

end

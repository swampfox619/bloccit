Rails.application.routes.draw do


  resources :questions

  resources :advertisements
  
  post 'users/confirm' => 'users#confirm'
  
  post 'users/new' => 'users#new'
  
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :topics do
    resources :sponsored_posts, except: [:index]
  end

  resources :users, only: [:new, :create]
  
  get 'about' => 'welcome#about'

  root 'welcome#index'

end

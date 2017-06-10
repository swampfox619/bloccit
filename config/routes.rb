Rails.application.routes.draw do


  resources :questions

  resources :advertisements
  
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :topics do
    resources :sponsored_posts, except: [:index]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'

end

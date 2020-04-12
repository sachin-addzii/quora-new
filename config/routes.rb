Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "home#index"
  resources :questions do
  	resources :answers
  end

  resources :users do
    member do
      post :follow
    end
  end
  resources :topics do
    member do
      post :follow
    end
  end
  
end

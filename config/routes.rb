Rails.application.routes.draw do
  get 'location/show'

  get 'user_liked_jobs/index'

  get 'user_companies/index'

  get 'jobs/index'

  get 'job/index'

  devise_for :users
  resources :users
  resources :job do
    member do 
      get :like
      get :dislike
    end 
  end

  resources :locations
  resources :companies do
  	member do 
  		get :follow
  		get :unfollow
  	end 
  end
  
  root to: 'job#index'
end

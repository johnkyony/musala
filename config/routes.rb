Rails.application.routes.draw do
  get 'locations/index'

  get 'locations/show'

  get 'user_liked_jobs/index'

  get 'user_companies/index'

  get 'jobs/index'

  get 'job/index'
  get '/linkedin_profile' => "linkedin#linkedin_profile"
  get '/oauth_account' => "linkedin#oauth_account"
  get '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'

  devise_for :users
  resources :users

  resources :locations
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

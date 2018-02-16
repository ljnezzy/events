Rails.application.routes.draw do

	resource :session
  root 'events#index'
  
	resources :events do
		resources :registrations
	end

  resources :users
  get 'signup' => 'users#new'
end

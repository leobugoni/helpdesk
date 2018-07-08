Rails.application.routes.draw do
  resources :contatos
	resources :users
	get 'sessions/new'
	get    'sign_in'   => 'sessions#new'	
	post   'sign_in'   => 'sessions#create'
	delete 'sign_out'  => 'sessions#destroy'
	root 'sessions#new'
end

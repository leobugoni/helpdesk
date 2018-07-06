Rails.application.routes.draw do
	resources :users
	get 'sessions/new'

	get 'contatos/index'
	get 'contatos/edit'
	get 'contatos/show'
	get 'contatos/new'
	post 'contatos/new' => 'contatos#create'
	get    'sign_in'   => 'sessions#new'	
	post   'sign_in'   => 'sessions#create'
	delete 'sign_out'  => 'sessions#destroy'
	root 'sessions#new'
end

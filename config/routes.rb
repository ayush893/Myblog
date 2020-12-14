Rails.application.routes.draw do

# site root route
root 'posts#index', as: 'home'

get 'about'=>'pages#about', as: 'about'
resources :posts do
	resources :comments
end

end

Rails.application.routes.draw do

 resources :books,only:[:index,:create,:show,:edit,:update,:destroy]
 resources :post_images, only: [:new, :create, :index, :show]
	root 'home#top'
  get 'home/about'
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  resources :comments

  resources :articles do
    resources :comments, only: [:create, :destroy, :update]
  end


  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

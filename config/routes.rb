Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/index'
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  # get 'contacts/index'
  # get 'contacts' => 'contacts#new'
  resource :contacts, only: [:new, :create], path_names: { :new => '' }

  resources :technologies do
    resources :lessons
  end

  #  https://guides.rubyonrails.org/routing.html
end

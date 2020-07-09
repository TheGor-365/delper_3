Rails.application.routes.draw do
  get 'home/index'

  # get 'contacts/index'
  # get 'contacts' => 'contacts#new'
  resource :contacts, only: [:new, :create], path_names: { :new => '' }

  resources :technologies

  #  https://guides.rubyonrails.org/routing.html
end

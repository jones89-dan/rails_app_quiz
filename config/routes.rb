Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/',  to: 'static_pages#index'
  
  post '/thejobs', to: 'thejobs#create'

  get 'thejobs/:id', to: 'thejobs#show'
  get 'thejobs' => 'thejobs#index'

end

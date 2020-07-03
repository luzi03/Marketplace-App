Rails.application.routes.draw do
 
  #devise generated routes
  devise_for :users

  resources :listings

  resources :users 

  resources :conversations do
    resources :messages
  end

  
 #stripe routes 
  get 'payments/success'
  get "/payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "pages#home", as: "root"
  
  get "/:path", to: "pages#not_found"

end

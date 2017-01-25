Rails.application.routes.draw do
  
  scope :api, defaults: {format: :json } do
  	resources :cars, except: [:new, :edit]
  	resources :poos, except: [:new, :edit]
  end
  
  get '/ui'  => 'ui#index'
  get '/ui#' => 'ui#index'
  root "ui#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

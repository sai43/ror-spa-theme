Rails.application.routes.draw do

  resources :settings, only: [:new, :index]
  post 'save_property' => "settings#save"
  root 'settings#index'

end

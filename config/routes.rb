Rails.application.routes.draw do

  resources :setting, only: [:new, :index]
  post 'save_property' => "setting#save"
  root 'setting#index'
  
end

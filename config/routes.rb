Rails.application.routes.draw do

  resources :settings, only: [:new, :index]
  post 'save_property' => "setting#save"
  root 'setting#index'

end

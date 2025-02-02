Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login', {:action=>"new", :controller=>"sessions"}

  post 'login', {:action=>"create", :controller=>"sessions"}
  get 'secrets', {:action=>"show", :controller=>"secrets"}
  post 'logout', {:action=>"destroy", :controller=>"sessions"}

end

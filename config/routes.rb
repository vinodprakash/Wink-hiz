Rails.application.routes.draw do
  get 'home/index'

  get 'home/gallery'
  get 'home/services'
  get 'home/contact'
  get 'home/about'
  get '/gallery' => 'home#gallery'
  get '/services' => 'home#services'
  get '/contact' => 'home#contact'
  get '/about' => 'home#about'
  root 'home#index'
  post '/customer_contact' => 'home#customer_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

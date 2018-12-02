Rails.application.routes.draw do
  get 'home/index'

  get 'home/gallery'
  get 'home/services'
  get 'home/contact'
  get '/gallery' => 'home#gallery'
  get '/services' => 'home#services'
  get '/contact' => 'home#contact'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

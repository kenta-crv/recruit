Rails.application.routes.draw do
  #devise_for :admins
  #devise_for :admins

  root to: 'app#lp' #トップランディングページ
  #get 'lp' => 'app#lp'
  #get 'app/business' => 'app#business'
  #get 'app/price' => 'app#price'
  #get 'app/company' => 'app#company'
  #get 'app/agent' => 'app#agent'
  #get 'app/review' => 'app#review'
  #get 'app/recruit' => 'app#recruit'

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'
end

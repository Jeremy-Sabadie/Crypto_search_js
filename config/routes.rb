Rails.application.routes.draw do

  root 'cryptos#search'
  
  get 'cryptos/search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

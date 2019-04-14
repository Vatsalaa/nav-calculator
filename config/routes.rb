Rails.application.routes.draw do
  get 'calculator/index'
  get 'calculator/submit'
  resources :fund_histories
  resources :funds

  root 'calculator#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

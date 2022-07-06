Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books
  get '/books' => 'books#index'
  # .../lists/1 や .../lists/3 に該当する
  get '/books/:id' => 'books#show' 
  get '/books/:id/edit' => 'books#edit' 
  delete '/books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

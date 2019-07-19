Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
    end
  resources :tweets
  resources :users, only: [:show]
  get   'tweets'      =>  'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'
  get 'users/:id' => 'users#show'
  delete 'tweets/:id' => 'tweets#destroy'
  get 'tweets/:id/edit' => 'tweets#edit'
  patch 'tweets/:id'  => 'tweets#update'
  get 'tweets/:id' => 'tweets#show'       #ツイート詳細画面
end

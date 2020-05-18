Rails.application.routes.draw do
  # Book一覧取得用のパス
  get '/api/books', to: 'api/books#index'

  # Book一覧表示用のパス
  get '/books', to: 'books#index'
end

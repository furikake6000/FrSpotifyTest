Rails.application.routes.draw do
  # トップページ
  root 'static_pages#home'

  get '/search', to: 'static_pages#search'

  # 固定ページ
  get '/help', to: 'static_pages#help'
end

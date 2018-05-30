Rails.application.routes.draw do
  root "welcome#index"
  get '/validation', to: 'validation#index'
end

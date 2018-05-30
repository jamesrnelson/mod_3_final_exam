Rails.application.routes.draw do
  root "welcome#index"
  get '/validation', to: 'validation#index'

  namespace :api do
    namespace :v1 do
      namespace :games do
        
      end
    end
  end
end

Rails.application.routes.draw do
root to: 'site#index'
  namespace :api do
    namespace :v1 do
      delete '/reacts/destroy_all', to: 'reacts#destroy_all'
      resources :reats, only: %i[index show create update destroy]
    end
  end
end

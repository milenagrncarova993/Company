# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  root to: 'pages#home'
  # root to: redirect('/profile')

  get '/profile', to: 'users#show'
  patch '/update', to: "api/v1/users#update"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resource :users, only: [ :update ]
    end
  end

end

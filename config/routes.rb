Rails.application.routes.draw do
  namespace :api, {format: 'json'} do
    namespace :v1 do
      post "/register" => "user#create"
      post '/user/index' => 'user#index'
      post '/user' => 'user#show'
      post '/product' => 'product#show'
    end
  end
end

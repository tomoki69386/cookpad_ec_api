Rails.application.routes.draw do
  namespace :api, {format: 'json'} do
    namespace :v1 do
      post "register" => "user#create"
    end
end
end

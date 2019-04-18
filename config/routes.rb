Rails.application.routes.draw do

  namespace :api do
    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students" => "students#show"
    patch "/students" => "students#update"
    delete "/students" => "students#destroy"    
  end
end

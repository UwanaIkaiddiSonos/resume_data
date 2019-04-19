Rails.application.routes.draw do

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get '/experiences' => 'experiences#index'
    get '/experiences/:id' => 'experiences#show'
    post '/experiences' => 'experiences#create'

    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students" => "students#show"
    patch "/students" => "students#update"
    delete "/students" => "students#destroy"    
  end
end

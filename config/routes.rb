Rails.application.routes.draw do

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get '/experiences' => 'experiences#index'
    get '/experiences/:id' => 'experiences#show'
    post '/students' => 'students#create'

    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students/:id" => "students#show"
    patch "/students/:id" => "students#update"
    delete "/students/id" => "students#destroy"    
  end
end

Rails.application.routes.draw do

<<<<<<< HEAD
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get '/experiences' => 'experiences#index'
    get '/experiences/:id' => 'experiences#show'
  end 
=======
  namespace :api do
    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students" => "students#show"
    patch "/students" => "students#update"
    delete "/students" => "students#destroy"    
  end
>>>>>>> 42e1889e9888cb689b4018a44acea358a8a87215
end

Rails.application.routes.draw do
  namespace :api do
    get '/educations' => 'educations#index'
    get '/educations/:id' => 'educations#show'
    post '/educations' => 'educations#create'
    patch '/educations/:id' => 'educations#update'
    delete '/educations/:id' => 'educations#destroy'

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
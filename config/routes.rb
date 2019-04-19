Rails.application.routes.draw do
  namespace :api do
    get '/educations' => 'educations#index'
    get '/educations/:id' => 'educations#show'
    post '/educations' => 'educations#create'
    patch '/educations/:id' => 'educations#update'
    delete '/educations/:id' => 'educations#destroy'

    get '/experiences' => 'experiences#index'
    get '/experiences/:id' => 'experiences#show'
    post '/experiences' => 'experiences#create'
    patch '/experiences/:id' => 'experiences#update'
    delete '/experiences/:id' => 'experiences#destroy'

    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students/:id" => "students#show", :defaults => { :format => 'json' }
    patch "/students/:id" => "students#update"
    delete "/students/id" => "students#destroy"  

    get "/capstones" => "capstones#index"
    post "/capstones" => "capstones#create"
    get "/capstones/:id" => "capstones#show"
    patch "/capstones/:id" => "capstones#update"
    delete "/capstones/:id" => "capstones#destroy"
  end
end
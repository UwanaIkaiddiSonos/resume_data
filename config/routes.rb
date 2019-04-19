Rails.application.routes.draw do
  namespace :api do
    get '/educations' => 'educations#index'
    get '/educations/:id' => 'educations#show'
    post '/educations' => 'educations#create'
    patch '/educations/:id' => 'educations#update'
    delete '/educations/:id' => 'educations#destroy'
  end
end
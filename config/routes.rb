Rails.application.routes.draw do
  get "/capstones" => "capstones#index"
  post "/capstones" => "capstones#create"
  get "/capstones/:id" => "capstones#show"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"
end

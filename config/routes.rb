Rails.application.routes.draw do
  namespace :api do
    get "/first_contact_url" => "contacts#first_contact_method"
    get "/all_contacts_url" => "contacts#all_contacts_method"

    get "/contact" => "contacts#index"
    post "/contact" => "contacts#create"
    get "/contact/:id" => "contacts#show"
    patch "/contact/:id" => "contacts#update"
    delete "contact/:id" => "contacts#destroy"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end

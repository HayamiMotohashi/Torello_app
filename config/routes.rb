Rails.application.routes.draw do
 root 'static_pages#home'
 get '/new', to: 'static_pages#new'
 post "cards" => "static_pages#create"
end

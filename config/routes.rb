Rails.application.routes.draw do
  resources :shains
  root :to => "menus#top"
end

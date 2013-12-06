RailsBootstrap::Application.routes.draw do
  resources :questions

  resources :applicants

  root :to => 'visitors#new'
end

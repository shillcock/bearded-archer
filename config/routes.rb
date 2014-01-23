BeardedArcher::Application.routes.draw do
  root 'sections#index'
  resources :sections
  resources :meetings
  resources :lessons
  resources :workshops
end

BeardedArcher::Application.routes.draw do
  root 'sections#index'

  resources :workshops do
    resources :lessons
  end
  
  resources :sections do
    resources :meetings
  end
end

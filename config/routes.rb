Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Afficher toutes les taches
  get '/tasks', to: 'tasks#index'
  # Créer une tache
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  # Afficher une tache
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # Editer une tache
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # Effacer une tache
  get '/tasks/:id', to: 'tasks#destroy', as: 'destroy_task'
  delete '/tasks/:id', to: 'tasks#destroy'
end

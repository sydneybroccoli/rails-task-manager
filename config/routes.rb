Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # READ ALL
  get '/tasks', to: 'tasks#index', as: 'tasks'

  # READ ONE
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # CREATE
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  # UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  post 'tasks/:id', to: 'tasks#update'

  # DESTROY
  delete '/tasks/:id', to: 'tasks#destroy'
end

Rails.application.routes.draw do
  # CRUD

  # READ
  get '/tasks', to: 'tasks#index', as: :tasks

  # CREATE
  get '/tasks/new', to: 'tasks#new', as: :new_tasks
  post '/tasks', to: 'tasks#create'

  # READ (after new to avoid clash)
  get '/tasks/:id', to: 'tasks#show', as: :task

  # UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_tasks
  patch '/tasks/:id', to: 'tasks#update'

  # DELETE
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete_tasks
end

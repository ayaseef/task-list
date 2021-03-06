Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # verb 'path', to: 'controller#action'
  # get '/tasks', to: 'tasks#index'
  root to: "tasks#index"
  # Routes that operate on individual tasks
  get '/tasks', to: 'tasks#index', as: "tasks"
  get '/tasks/new', to: 'tasks#new', as: "new_task"

  post '/tasks', to: 'tasks#create'

  get '/tasks/:id', to: 'tasks#show', as: "task"
  get '/tasks/:id/edit', to: 'tasks#edit', as: "edit_task"

  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
  patch 'tasks/:id/toggle_complete', to: 'tasks#toggle_complete', as: 'toggle_complete'
end

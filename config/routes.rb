# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'

  # As a user, I can list tasks
  get 'tasks', to: 'tasks#index', as: :tasks

  # As a user, I can add a new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # As a user, I can edit a task (mark as completed / update title & details)
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'

  # As a user, I can remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end

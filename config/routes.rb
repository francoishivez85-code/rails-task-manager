Rails.application.routes.draw do
  # LIST
  get "tasks", to: "tasks#index"

  # NEW + CREATE
  get "tasks/new", to: "tasks#new", as: :new_task   # ← doit être AVANT
  post "tasks", to: "tasks#create"

  # SHOW
  get "tasks/:id", to: "tasks#show", as: :task      # ← doit être APRÈS

  # EDIT + UPDATE
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # DESTROY
  delete "tasks/:id", to: "tasks#destroy"

  get "up" => "rails/health#show", as: :rails_health_check
end

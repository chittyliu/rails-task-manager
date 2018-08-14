Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read
  get "tasks", to: "tasks#index"
  # create
  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"
  # read one task
  get "tasks/:id", to: "tasks#show", as: :task
  # update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update", as: :update
  # delete
  delete "tasks/:id", to: "tasks#destroy"
end

Rails.application.routes.draw do
  root controller: :scheduled_jobs, action: :index
  resources :scheduled_jobs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

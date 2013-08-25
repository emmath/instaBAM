InstaBam::Application.routes.draw do
  root to: "pretties#index"
  resources :pretties
end

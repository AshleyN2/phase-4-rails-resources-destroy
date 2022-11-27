Rails.application.routes.draw do
  #resources :birds, only: [:index, :show, :create, :update, :destroy]
  resources :birds # since we're using all 5 RESTful routes
  
  patch "/birds/:id/like", to: "birds#increment_likes"
end

Rails.application.routes.draw do
  get "/dish/:id", to: "dishes#show"

  get "chef/:id/ingredients", to: "chefs#index"
  get "chef/:id", to: "chefs#show"
end

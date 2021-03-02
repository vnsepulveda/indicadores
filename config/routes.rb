Rails.application.routes.draw do
  root "indicadores#index"


  get 'indicadores', to: "indicadores#index"
  get 'indicadores/:id', to: "indicadores#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  # resources :cocktails, only: [:index, :show, :new, :create] do
  #   resources :doses, only: [:edit, :update, :delete]
  # end


  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end

  root "cocktails#index"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

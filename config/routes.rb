Rails.application.routes.draw do
  resources :restaurants, only: %i[index create new show] do
    resources :reviews, only: %i[create new]
  end
end

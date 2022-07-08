Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    devise_for :users
    root to: 'categories#index'

    resources :categories, only: %i[index new create] do
      resources :payments, only: %i[index new create destroy]
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end

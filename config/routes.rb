Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    devise_for :users
    root to: 'categories#splash'

    resources :categories, only: %i[index new create splash] do
      resources :payments, only: %i[index new create destroy]
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end

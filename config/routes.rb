Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope module: "api" do
    namespace :v1 do
      resources :jobs do
        resources :applies
      end
      resources :geeks do
        resources :applies
      end
      resources :applies do
        get "company/:company_id", to: "applies#applies_for_company", on: :collection
      end
      resources :companies do
        resources :jobs
      end

    end
  end

  match "*path", to: "application#catch_404", via: :all
  
end

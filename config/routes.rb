Rails.application.routes.draw do
  devise_for :clients, skip: [:registrations]
  as :client do
    get 'clients/edit' => 'devise/registrations#edit', :as => 'edit_client_registration'
    put 'clients' => 'devise/registrations#update', :as => 'client_registration'
  end

  devise_for :staffs, skip: [:registrations]
  as :staff do
    get 'staffs/edit' => 'devise/registrations#edit', :as => 'edit_staff_registration'
    put 'staffs' => 'devise/registrations#update', :as => 'staff_registration'
  end

  root to: "home#index"

  namespace :client do
    root to: "home#index"
    resources :home, only: :index
  end

  namespace :staff do
    root to: "home#index"
    resources :home, only: :index
    get "/*slug", to: "home#index"
  end

  namespace :api do
    namespace :v1 do
      post "auth", to: "auth#create"
      post "auth/refresh_token", to: "auth#refresh_token"
      namespace :staff do
        resources :clients, only: [:index, :create, :update, :show] do
          get "validate", to: "clients#validate", on: :collection
        end
        resources :equipments, only: [:index, :create, :update, :show]
        resources :organizations, only: [:index, :create, :update, :show]
        resources :staffs, only: [:index, :create, :update, :show]
        get :me, to: "info#me"
      end
    end
  end
end

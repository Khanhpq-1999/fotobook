Rails.application.routes.draw do
  devise_scope :user do
    root to: "users/sessions#new"
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  resources :users do
    member do
      get 'welcome'
    end
    
    resources :photos, shallow: true do
      collection do
        get 'feed'
      end
    end

    resources :albums, shallow: true do
      collection do
        get 'feed'
      end
    end
  end

end

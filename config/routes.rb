Rails.application.routes.draw do
  resources :daily_updates do
    collection do
      get :home
    end
  end
  resources :lessons
  resources :notes

  root to: 'daily_updates#home'
end

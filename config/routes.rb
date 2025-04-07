Rails.application.routes.draw do
  get 'monthly_report', to: 'reports#monthly_summary'
  resources :orders do
    collection do
      get 'print'
    end
  end

  root 'home#index'
  get 'home', to: 'home#index'

  resources :monthly_summary
end
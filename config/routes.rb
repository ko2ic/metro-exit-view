Rails.application.routes.draw do
  root 'lines#index'
  resources :lines, constraints: { id: /[^\/]+/}, only: %w(index) do
    resources :stations, only: %w(index) do
      resources :exits, only:  %w(index show)
    end
  end
end

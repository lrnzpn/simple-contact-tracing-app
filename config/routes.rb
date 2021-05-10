Rails.application.routes.draw do
    devise_for :stores
    root to: "stores#index"
    resources :stores, param: :slug
    resources :customers, :path => '/stores/:slug'
end

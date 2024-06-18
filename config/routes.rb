Rails.application.routes.draw do
  namespace :admin do
      resources :kandydats
      resources :kandydat_wybories
      resources :typ_wyborows
      resources :wyborcas
      resources :wyborca_wybories
      resources :wybories
      resources :partias

      root to: "kandydats#index"
  end

  get 'sessions/new'
  post 'sessions/create'
  delete 'sessions/destroy'
  get 'partias/index'
  get 'partias/show'
  get 'partias/new'
  post 'partias/create'
  get 'partias/edit'
  patch 'partias/update'
  delete 'partias/destroy'
  get 'wyborca_wybories/index'
  get 'wyborca_wybories/show'
  get 'wyborca_wybories/new'
  post 'wyborca_wybories/create'
  get 'wyborca_wybories/edit'
  patch 'wyborca_wybories/update'
  delete 'wyborca_wybories/destroy'
  get 'kandydat_wybories/index'
  get 'kandydat_wybories/show'
  get 'kandydat_wybories/new'
  post 'kandydat_wybories/create'
  get 'kandydat_wybories/edit'
  patch 'kandydat_wybories/update'
  delete 'kandydat_wybories/destroy'
  get 'kandydats/index'
  get 'kandydats/show'
  get 'kandydats/new'
  post 'kandydats/create'
  get 'kandydats/edit'
  patch 'kandydats/update'
  delete 'kandydats/destroy'
  get 'typ_wyborows/index'
  get 'typ_wyborows/show'
  get 'typ_wyborows/new'
  post 'typ_wyborows/create'
  get 'typ_wyborows/edit'
  patch 'typ_wyborows/update'
  delete 'typ_wyborows/destroy'
  get 'wybories/index'
  get 'wybories/show'
  get 'wybories/new'
  post 'wybories/create'
  get 'wybories/edit'
  patch 'wybories/update'
  delete 'wybories/destroy'
  get 'wyborcas/index'
  get 'wyborcas/show'
  get 'wyborcas/new'
  post 'wyborcas/create'
  get 'wyborcas/edit'
  patch 'wyborcas/update'
  delete 'wyborcas/destroy'
  
  resources :wyborcas
  resources :typ_wyborows
  resources :wybories do
    collection do
      get 'wyniki'
    end
  end
  resources :kandydats do
    post 'glosuj', on: :member
    get 'dziekuje', on: :member
  end
  resources :kandydat_wybories
  resources :wyborca_wybories
  resources :partias
  
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  root 'public#home'
end

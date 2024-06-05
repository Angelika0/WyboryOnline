Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'partias/index'
  get 'partias/show'
  get 'partias/new'
  get 'partias/create'
  get 'partias/edit'
  get 'partias/update'
  get 'partias/destroy'
  get 'wyborca_wybories/index'
  get 'wyborca_wybories/show'
  get 'wyborca_wybories/new'
  get 'wyborca_wybories/create'
  get 'wyborca_wybories/edit'
  get 'wyborca_wybories/update'
  get 'wyborca_wybories/destroy'
  get 'kandydat_wybories/index'
  get 'kandydat_wybories/show'
  get 'kandydat_wybories/new'
  get 'kandydat_wybories/create'
  get 'kandydat_wybories/edit'
  get 'kandydat_wybories/update'
  get 'kandydat_wybories/destroy'
  get 'kandydats/index'
  get 'kandydats/show'
  get 'kandydats/new'
  get 'kandydats/create'
  get 'kandydats/edit'
  get 'kandydats/update'
  get 'kandydats/destroy'
  get 'typ_wyborows/index'
  get 'typ_wyborows/show'
  get 'typ_wyborows/new'
  get 'typ_wyborows/create'
  get 'typ_wyborows/edit'
  get 'typ_wyborows/update'
  get 'typ_wyborows/destroy'
  get 'wybories/index'
  get 'wybories/show'
  get 'wybories/new'
  get 'wybories/create'
  get 'wybories/edit'
  get 'wybories/update'
  get 'wybories/destroy'
  get 'wyborcas/index'
  get 'wyborcas/show'
  get 'wyborcas/new'
  get 'wyborcas/create'
  get 'wyborcas/edit'
  get 'wyborcas/update'
  get 'wyborcas/destroy'
  resources :wyborcas
  resources :typ_wyborows
  resources :wybories
  resources :kandydats
  resources :kandydat_wybories
  resources :wyborca_wybories
  resources :partias
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :kandydats do
    post 'glosuj', on: :member
    get 'dziekuje', on: :member
  end
  root 'public#home'
  
end

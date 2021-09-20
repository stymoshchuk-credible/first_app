Rails.application.routes.draw do

  get 'schedule_days/index'
  get 'schedule_days/show'
  get 'schedule_days/new'
  get 'schedule_days/edit'
  require 'sidekiq/web'

  Rails.application.routes.draw do
    get 'schedule_days/index'
    get 'schedule_days/show'
    get 'schedule_days/new'
    get 'schedule_days/edit'

    mount Sidekiq::Web => '/sidekiq'
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # get '/tickets' => 'tickets#index'
  # get '/ticket/:id' => 'tickets#show', as: :ticket
  # get '/tickets/new' => 'tickets#new', as: :new_ticket
  # post '/tickets' => 'tickets#create'
  # get '/tickets/:id/edit' => 'tickets#edit', as: :edit_ticket
  # put '/ticket/:id' => 'tickets#update'
  # patch '/ticket/:id' => 'tickets#update'
  # delete '/ticket/:id' => 'tickets#destroy'
  # get 'home/index'
  resources :tickets
  resources :buses
  resources :stations
  resources :operations, only: [:index]
  resources :buses_schedules
  resources :schedule_days
  resources :schedule_stations

  get 'home/index'
  get '/update_ticket_price' => 'operations#update_ticket_price'

  # get '/tickets/:id', action: 'show', controller: 'buses'
  # get '/tickets', action: 'edit', controller: 'tickets'
  # post '/tickets', action: 'create', controller: 'tickets'
  # patch '/tickets', action: 'update', controller: 'tickets'
  # delete '/tickets', action: 'destroy', controller: 'tickets'
  # get ('/tickets', { :controller => 'tickets', :action =>'index'})

  # get 'tickets', to: 'tickets#show'
  # post 'tickets', to:'tickets#new'

  #написать запросы

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

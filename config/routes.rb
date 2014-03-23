HutSample::Application.routes.draw do

 
  resources :tasks 

  resources :student_subcats

  resources :shipssubs

  resources :ships_subs

  resources :grantsubs

  resources :studentships

  resources :statuses

  resources :grant_allocations

  resources :grants

  resources :deliverables

  resources :awards

  resources :students

  resources :funders

  resources :types

  resources :users




  #Call back route for google API
  get "/auth/:provider/callback" => "sessions#create"

  root :to => 'events#index'  
  resources :events do
    collection do
      get :get_events
    end
    member do
      post :move
      post :resize
    end
  end
end

HutSample::Application.routes.draw do

mount FullcalendarEngine::Engine => "/fullcalendar_engine"
	

 
  get "settings/index"
  get "welcome/auth"
  get "main/index"
  get "welcome/index"
  resources :sub_tasks

  resources :users

  resources :add_users

  resources :projects

  resources :project_allocations

  resources :tasks

  resources :task_comments

  resources :project_comments

  resources :tasks 
    


  resources :student_subcats

  resources :shipssubs

  resources :ships_subs

  resources :grantsubs

  resources :studentships

  resources :statuses

  resources :grants

  resources :students

  resources :funders

  resources :types

  get '/login' => 'users#login'  
  get '/main' => 'main#index'
  get 'tasks' => 'users#login'  


  #Call back route for google API
  get "/auth/:provider/callback" => "sessions#create"

  root:to => 'events#index'  
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

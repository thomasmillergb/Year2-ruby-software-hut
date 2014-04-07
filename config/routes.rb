HutSample::Application.routes.draw do
  

######Bad URL####

get '/404' => 'errors#index'
get '/422' => 'errors#index'
get '/500' => 'errors#index'

 
  resources :errors

  get "settings/index"
  get "welcome/auth"
  get "main/index"
  get "welcome/index"
  get "/project/:project_id/project_comments" => "project_comments#new"
  
  resources :sub_tasks

  resources :users

  resources :add_users

  resources :projects do

     collection do
          post :edit_individual 
          put :update_individual
          post :edit_multiple
          put :update_multiple
     end
  end


  resources :project_allocations

  resources :tasks

  resources :task_comments

  resources :project_comments
    get ":project_id/project_comments/:id" => "project_comments#create"
    
    get ":project_id/project_comments/new" => "project_comments#new"
  resources :tasks 
    


  resources :student_subcats

  resources :shipssubs

  resources :ships_subs

  resources :grantsubs

  resources :studentships

  resources :statuses

  resources :grants do
     collection do
          post :edit_individual 
          put :update_individual

          put :update_multiple
     end
  end
    
  resources :students

  resources :funders

  resources :types

  get '/login' => 'users#login'  
  get '/main' => 'main#index'
  get 'tasks' => 'users#login' 
#  resources :notfound 
  get '/error' => 'notfound#error'

  #Call back route for google API
  get "/auth/:provider/callback" => "sessions#create"

  root "projects#index"  
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


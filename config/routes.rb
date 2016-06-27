HRIS::Application.routes.draw do

  root "company#index"
  resources :company
  get "branchcom/newset"
  resources :branchcom
  get "employee/new_personal"
  get "employee/new_basic_contact"
  get "employee/new_emergency_contact"
  resources :employee
  resources :service
  resources :education
  resources :awards
  resources :work 
  resources :exam
  resources :medical
  resources :organization
  resources :skill
  resources :training

  

  #customize routes
  get 'employee/home' => 'home#index'
end

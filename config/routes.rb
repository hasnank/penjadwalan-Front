Rails.application.routes.draw do
  resources :topik_to_mahasiswas
  resources :topik_to_dosens
  resources :pembimbings
  resources :pengujis
  resources :topiks
  resources :mahasiswas
  resources :dosens
  get 'home/index'
  get 'home/kerja_praktik'
  get 'home/seminar_satu'
  get 'home/seminar_dua'
  get 'home/sidang'
  get 'home/test_calendar_process'
  match "home/data", :to => "home#data", :as => "data", :via => "get"
  match "home/fetch", :to => "home#fetch", :as => "fetch", :via => "get"
  match "home/schedule", :to => "home#schedule", :as => "schedule", :via => "get"
  match "home/req_post", :to => "home#req_post", :as => "req_post", :via => "get"
  match "home/req_post_form", :to => "home#req_post_form", :as => "req_post_form", :via => "get"
  match "home/send_json_post", :to => "home#send_json_post", :as => "send_json_post", :via => "post"
  match "home/test_request", :to => "home#test_request", :as => "test_request", :via => "get"
  match "home/ask_permission", :to => "home#ask_permission", :as => "ask_permission", :via => "get"
  match "home/db_action", :to => "home#db_action", :as => "db_action", :via => "get"
  match "home/result_calendar", :to => "home#result_calendar", :as => "result_calendar", :via => "get"
  match "home/receive_json_result", :to => "home#receive_json_result", :as => "receive_json_result", :via => "get"
  match "home/calendar_action", :to => "home#calendar_action", :as => "calendar_action", :via => "get"
  match "home/permission_action", :to => "home#permission_action", :as => "permission_action", :via => "post"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

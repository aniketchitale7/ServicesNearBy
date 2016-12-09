Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'myprofile/myprofile'
  root 'welcome#index'
<<<<<<< HEAD
  get 'service_services/index'
  post 'myprofile/create'
  get 'welcome/admin'
=======
  post 'application/search'
  post 'welcome/search'
  get 'myprofile/requestvendoraccount' , :to => 'myprofile#requestvendoraccount', :as => 'requestvendoraccount'


  get 'myprofile/servicerequests' , :to => 'myprofile#servicerequests', :as => 'servicerequestsvendor'

  get 'myprofile/userservices' , :to => 'myprofile#userservices', :as => 'userservices'
  get 'myprofile/createVendorAccount'
  resources :myprofile
  resources :businessprofile
  get 'myprofile/update'
  #post 'myprofile/create'
  #get 'myprofile/edit'
  get 'admin/index'
  get 'search/index'
  post 'search/feedback', :to => 'search#feedback', :as => 'searchfeedback'
  #get 'search/feed', :to => 'search#index', :as => 'searchindex'
  resources :admin
  get 'search/feed'
  post 'search/create'
  get '/admin/reject/:id', :to => 'admin#reject', :as => 'adminreject'
  get '/admin/activate/:id', :to => 'admin#activate', :as => 'adminactivate'
  get '/admin/deactivate/:id', :to => 'admin#deactivate', :as => 'admindeactivate'
  get '/admin/deactivatecategory/:id', :to => 'admin#deactivatecategory', :as => 'admindeactivatecategory'
  get '/admin/activatecategory/:id', :to => 'admin#activatecategory', :as => 'adminactivatecategory'
>>>>>>> master

  get '/admin/deactivateservice/:id', :to => 'admin#deactivateservice', :as => 'admindeactivateservice'
  get '/admin/activateservice/:id', :to => 'admin#activateservice', :as => 'adminactivateservice'
  post '/admin/addcategory' , :to => 'admin#addcategory', :as => 'adminaddcategory'


  get '/admin/rejectservice/:id', :to => 'admin#rejectservice', :as => 'adminrejectservice'

  post '/welcome/requestservice/:id', :to => 'welcome#requestservice', :as => 'welcomerequestservice'

  post 'myprofile/acceptRequest/:id' , :to => 'myprofile#acceptRequest', :as => 'acceptRequestVendor'
  post 'myprofile/rejectRequest/:id' , :to => 'myprofile#rejectRequest', :as => 'rejectRequestVendor'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

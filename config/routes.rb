Gradlads::Application.routes.draw do
  resources :livingexpenses


  devise_for :users,:controllers => { :registration =>'registration'}
#match 'dashboard' => 'home#dashboard'
match 'dashboard' => 'search#index'
  get "searchresult/index"

  get "job/show"

  get "searchresult/show"

  get "search/index"

  post "search/show"

  get "specialization/show"

  get "category/show"

  get "college/show"

  get "country/show"

  get "index/show"

  get "search/job"

  get "course/edit"

  post "job/show"

  post "search/show_job"
  get "application/show"

  post "application/show"
  match 'application/show_job' => 'search#show_job'

  get "application/about"
  get "application/contact"
 

  devise_for :users do 
  get '/users/sign_out' => 'devise/sessions#destroy' 
  end

  resources :search do

  resources :category
  resources :specialization
  resources :country
  resources :college
  end 
match 'alertbox' => 'search#index'
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'search#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

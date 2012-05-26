StaticPage::Application.routes.draw do
  get "orders/index"

  get "orders/show"

  get "orders/destroy"

  get "products/show"

  get "admin/managers_users/index"

  get "admin/managers_users/destroy"

  resources :catalogs
  resources :products
  resources :carts
  resources :users
  resources :sessions , only: [:new, :create, :destroy]

  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get "static_pages/contact"
  get "admin/managers/index"

  match "/checkcart", to: "carts#new"
  match "/saveorder", to: "carts#create"

  match "/help" , to: "static_pages#help"
  match "/about", to: "static_pages#about"
  match "/home", to: "static_pages#home"
  match "/contact", to: "static_pages#contact"
  match "/signup", to: "users#new"

  match "/signin", to: "sessions#new"
  match "/signout", to: "sessions#destroy"
  match "/sessions", to: "sessions#create"

  match "/admin", to: "admin/managers#index"
  match "/admin/users" , to: "admin/managers_users#index"

  match "/admin/catalogs" , to: "admin/managers_catalogs#index"

  match "/admin/catalogs/new", to: "admin/managers_catalogs#new"
  match "/admin/catalogs/:id" , to: "admin/managers_catalogs#show"  , via: 'get'
  match "/admin/catalogs/create", to: "admin/managers_catalogs#create"
  match "/admin/catalogs/:id/edit", to: "admin/managers_catalogs#edit"
  match "/admin/catalogs/:id", to: "admin/managers_catalogs#destroy", via: 'delete'
  match "/admin/catalogs/:id", to: "admin/managers_catalogs#update"  , via: 'put'

  match "/admin/catalogs/:id/products/new", to: "admin/managers_products#new"
  match "/admin/catalogs/:id/products/create", to: "admin/managers_products#create"

  match "/admin/products/:id/edit", to:"admin/managers_products#edit"
  match "/admin/products/:id", to: "admin/managers_products#destroy", via: 'delete'
  match "/admin/products/:id", to:"admin/managers_products#update"  , via: 'put'

  root :to => 'static_pages#home'


  namespace :admin do
    resources :users, :catalogs , :products , :orders
  end

  resources :catalogs do
    resources :products
  end

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


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

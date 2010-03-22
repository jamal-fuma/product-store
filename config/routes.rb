ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.
  map.resources :users
  map.resource :session
  
  # roles have users
  map.resources :roles, :collection => {:reorder => :post, :remove => :delete}

  # products have images and categories and suppliers
  map.resources :products, :collection => {:reorder => :post, :remove => :delete} do |product|
   product.resources :images,    :controller => :product_images,  :only => [:index,:create,:destroy], :collection => {:reorder => :post, :remove =>:delete}
   product.resources :categories, :controller => :product_categories, :only => [:index,:create,:destroy], :collection => {:reorder => :post, :remove =>:delete}
   product.resources :suppliers, :controller => :product_suppliers, :only => [:index,:create,:destroy], :collection => {:reorder => :post, :remove =>:delete}
  end
 
 # categories have products and images 
  map.resources :categories, :collection => {:reorder => :post, :remove => :delete}  do |category|
   category.resources :images,   :controller => :category_images,   :only => [:index,:create,:destroy], :collection => {:reorder => :post, :remove =>:delete}
   category.resources :products, :controller => :category_products, :only => [:index,:create,:destroy], :collection => {:reorder => :post, :remove =>:delete}
  end
  
  # suppliers have products
  map.resources :suppliers, :collection => {:reorder => :post, :remove => :delete} do |supplier|
      supplier.resources :products, 
        :controller => :supplier_products,
        :only => [:index,:create,:destroy], 
        :collection => {:reorder => :post, :remove =>:delete}
  end
 
 # images have products and categories
  map.resources :images, :collection => {:reorder => :post, :remove => :delete} do |image|
      image.resources :categories,    :controller => :image_categories,  :only => [:index,:create,:destroy], :collection => {:reorder => :post, :remove =>:delete}
      image.resources :products, :controller => :image_products, :only => [:index,:create,:destroy], :collection => {:reorder => :post, :remove =>:delete}
  end

  map.root :categories

  # bugs have comments
  map.resources :bugs, :collection => {:reorder => :post, :remove =>:delete} do |bug|
    bug.resources :comments, :collection => {:reorder => :post, :remove =>:delete}
  end

 #   map.namespace :admin do |admin|

  #named routes
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
# map.connect ':controller/:action/:id'
# map.connect ':controller/:action/:id.:format'
end

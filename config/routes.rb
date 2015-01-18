Rails.application.routes.draw do


  # Route for start action
   #match '/forum_posts/postareviewncomment', :controller => 'forum_posts', :action => 'postareviewncomment', via: :get

    get '/forum_posts/postareviewncomment';
    get '/forum_posts/apage';


    get 'corporates/aboutus'
    get 'corporates/careers'
    get 'corporates/cookies'
    get 'corporates/copyright'
    get 'corporates/policy'
    get 'corporates/pressreleases'
    get 'corporates/privacy'
    get 'corporates/termsnconditions'


      get 'customerservices/contactus'
      get 'customerservices/faqs'
      get 'customerservices/help'
      get 'customerservices/sendfeedback'

    get 'technicalinfos/mobileapps'
    get 'technicalinfos/tools'
    get 'technicalinfos/downloads'

      get 'keepmeposteds/subscribe'
      get 'keepmeposteds/viewnotifications'

  get 'my_accounts/loginpage'
  get 'my_accounts/logout'
  get 'my_accounts/viewhistory'
  get 'my_accounts/viewprofile'
  get 'my_accounts/editprofile'
  get 'my_accounts/settingsprofile'
  get 'my_accounts/editcredentials'
  get 'my_accounts/createanaccount'


  get 'shoppings/viewcart'
  get 'shoppings/editcart'
  get 'shoppings/addtoshoppingcart'
  get 'shoppings/proceedtocheckoutnconfirm'


  get 'searchn_view_items/searchanitem'
  get 'searchn_view_items/viewanitem'
  get 'searchn_view_items/viewrecommendeditems'


  resources :corporates

  

  resources :customerservices

 

  resources :technicalinfos

 

  resources :keepmeposteds



  resources :my_accounts



  resources :shoppings




  resources :searchn_view_items




  resources :forum_posts
 

  

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

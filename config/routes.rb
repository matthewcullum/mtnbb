Rails.application.routes.draw do

	authenticate :admin do
		resources :articles, only: [:new, :create, :edit, :update, :destroy]
		resources :faqs, only: [:new, :create, :edit, :update, :destroy]
	end

	resources :articles, only: [:index, :show]
	resources :faqs, only: [:index, :show]

	devise_for :admin

	namespace :admin do
		get '', to: 'dashboard#index'
	end

	get 'contact/index'

	root 'home#home'

	get 'plans-and-pricing', to: 'plans_pricing#index'
	get 'contact', to: 'contact#index'
	post 'request-internet', to: 'request_internet#send_message'
	get 'request-internet', to: 'request_internet#index'
	#get 'admin', to: 'admin#index'
	post 'contact', to: 'contact#send_message'
	get 'terms-and-conditions', to: 'static'

	# The priority is based upon order of creation: first created -> highest priority.
	# See how all your routes lay out with "rake routes".

	# You can have the root of your site routed with "root"
	# root 'welcome#index'

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

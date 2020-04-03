Rails.application.routes.draw do
  root to: 'restaurants#index'
  
  resources :restaurants do
    resources :reviews
  end

end 

# QUESTO E' GENERATO CON "resources :restaurants do resources :reviews end"
#  Prefix                Verb   URI Pattern                                            Controller#Action
#                   root GET    /                                                      restaurants#index
#     restaurant_reviews GET    /restaurants/:restaurant_id/reviews(.:format)          reviews#index
#                        POST   /restaurants/:restaurant_id/reviews(.:format)          reviews#create
#  new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format)      reviews#new
# edit_restaurant_review GET    /restaurants/:restaurant_id/reviews/:id/edit(.:format) reviews#edit
#      restaurant_review GET    /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#show
#                        PATCH  /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#update
#                        PUT    /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#update
#                        DELETE /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#destroy
#            restaurants GET    /restaurants(.:format)                                 restaurants#index
#                        POST   /restaurants(.:format)                                 restaurants#create
#         new_restaurant GET    /restaurants/new(.:format)                             restaurants#new
#        edit_restaurant GET    /restaurants/:id/edit(.:format)                        restaurants#edit
#             restaurant GET    /restaurants/:id(.:format)                             restaurants#show
#                        PATCH  /restaurants/:id(.:format)                             restaurants#update
#                        PUT    /restaurants/:id(.:format)                             restaurants#update
#                        DELETE /restaurants/:id(.:format)                             restaurants#destroy


# QUESTO E' GENERATO SOLO CON "resources :restaurants"
#            root GET    /                               restaurants#index
#     restaurants GET    /restaurants(.:format)          restaurants#index
#                 POST   /restaurants(.:format)          restaurants#create
#  new_restaurant GET    /restaurants/new(.:format)      restaurants#new
# edit_restaurant GET    /restaurants/:id/edit(.:format) restaurants#edit
#      restaurant GET    /restaurants/:id(.:format)      restaurants#show
#                 PATCH  /restaurants/:id(.:format)      restaurants#update
#                 PUT    /restaurants/:id(.:format)      restaurants#update
#                 DELETE /restaurants/:id(.:format)      restaurants#destroy

# QUESTO E' IL MIO:
  # get 'restaurants/:id', to: 'restaurants#show'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # patch 'restaurants/:id', to: 'restaurants#update'
  # delete 'restaurants/:id', to: 'restaurants#destroy'

 

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


Threesquare::Application.routes.draw do

  root 'locations#index'
  resources :locations
end


#        Prefix Verb   URI Pattern                   Controller#Action
#          root GET    /                             locations#index
#     locations GET    /locations(.:format)          locations#index
#               POST   /locations(.:format)          locations#create
#  new_location GET    /locations/new(.:format)      locations#new
# edit_location GET    /locations/:id/edit(.:format) locations#edit
#      location GET    /locations/:id(.:format)      locations#show
#               PATCH  /locations/:id(.:format)      locations#update
#               PUT    /locations/:id(.:format)      locations#update
#               DELETE /locations/:id(.:format)      locations#destroy
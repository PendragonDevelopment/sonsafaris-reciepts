SonsafarisReciepts::Application.routes.draw do

  get "donations/new"

  get "donations/create"

  get "donations/show"

  get "donations/index"

  get "donations/edit"

  get "donations/update"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users

  resources :users 
  resources :donors do
  	resources :donations
  end
end
#== Route Map
# Generated on 16 Apr 2013 16:11
#
#                     root        /                              home#index
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                    users GET    /users(.:format)               users#index
#                          POST   /users(.:format)               users#create
#                 new_user GET    /users/new(.:format)           users#new
#                edit_user GET    /users/:id/edit(.:format)      users#edit
#                     user GET    /users/:id(.:format)           users#show
#                          PUT    /users/:id(.:format)           users#update
#                          DELETE /users/:id(.:format)           users#destroy
#                   donors GET    /donors(.:format)              donors#index
#                          POST   /donors(.:format)              donors#create
#                new_donor GET    /donors/new(.:format)          donors#new
#               edit_donor GET    /donors/:id/edit(.:format)     donors#edit
#                    donor GET    /donors/:id(.:format)          donors#show
#                          PUT    /donors/:id(.:format)          donors#update
#                          DELETE /donors/:id(.:format)          donors#destroy

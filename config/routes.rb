SonsafarisReciepts::Application.routes.draw do

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users

  resources :users 
  match "donation_totals", :to => "donations#donation_totals"
  match "send_monthly_reports", :to => "donations#send_monthly_reports"
  resources :donors do
  	resources :donations
  end
end
#== Route Map
# Generated on 04 May 2013 12:23
#
#                     root        /                                              home#index
#         new_user_session GET    /users/sign_in(.:format)                       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                      devise/sessions#destroy
#            user_password POST   /users/password(.:format)                      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                 devise/passwords#edit
#                          PUT    /users/password(.:format)                      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                        devise/registrations#cancel
#        user_registration POST   /users(.:format)                               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                          devise/registrations#edit
#                          PUT    /users(.:format)                               devise/registrations#update
#                          DELETE /users(.:format)                               devise/registrations#destroy
#                    users GET    /users(.:format)                               users#index
#                          POST   /users(.:format)                               users#create
#                 new_user GET    /users/new(.:format)                           users#new
#                edit_user GET    /users/:id/edit(.:format)                      users#edit
#                     user GET    /users/:id(.:format)                           users#show
#                          PUT    /users/:id(.:format)                           users#update
#                          DELETE /users/:id(.:format)                           users#destroy
#          donation_totals        /donation_totals(.:format)                     donations#donation_totals
#     send_monthly_reports        /send_monthly_reports(.:format)                donations#send_monthly_reports
#          donor_donations GET    /donors/:donor_id/donations(.:format)          donations#index
#                          POST   /donors/:donor_id/donations(.:format)          donations#create
#       new_donor_donation GET    /donors/:donor_id/donations/new(.:format)      donations#new
#      edit_donor_donation GET    /donors/:donor_id/donations/:id/edit(.:format) donations#edit
#           donor_donation GET    /donors/:donor_id/donations/:id(.:format)      donations#show
#                          PUT    /donors/:donor_id/donations/:id(.:format)      donations#update
#                          DELETE /donors/:donor_id/donations/:id(.:format)      donations#destroy
#                   donors GET    /donors(.:format)                              donors#index
#                          POST   /donors(.:format)                              donors#create
#                new_donor GET    /donors/new(.:format)                          donors#new
#               edit_donor GET    /donors/:id/edit(.:format)                     donors#edit
#                    donor GET    /donors/:id(.:format)                          donors#show
#                          PUT    /donors/:id(.:format)                          donors#update
#                          DELETE /donors/:id(.:format)                          donors#destroy

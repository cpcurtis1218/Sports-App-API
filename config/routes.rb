# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes for sports, groups, and memberships.  we dont use new or
  # edit, instead we have create and update
  resources :sports, except: %i[new edit]
  resources :groups, except: %i[new edit]
  resources :memberships, except: %i[new edit patch]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end

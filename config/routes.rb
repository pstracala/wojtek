Rails.application.routes.draw do
  captcha_route
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  resources 'diet_forms', only: [:new, :create]
  root 'diet_forms#new'
end

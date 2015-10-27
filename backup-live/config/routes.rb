Rails.application.routes.draw do
  # root :to => 'https://www.facebook.com/goxskin'
  root :to => redirect("https://www.facebook.com/goxskin")
  #'page#home'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'store', to: "page#store"
  get 'apple_watch', to: "page#apple_watch"
  get 'iphone6', to: "page#iphone6"
  get 'make', to: "page#make"
  get '/admin', to: "admin#login"

end

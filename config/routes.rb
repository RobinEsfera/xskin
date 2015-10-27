Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # root 'page#home'
  get 'page/home'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'store', to: "page#store"
  get 'apple_watch', to: "page#apple_watch"
  get 'iphone6', to: "page#iphone6"
  get 'make', to: "page#make"
  # get '/admin', to: "admin#login"
  get 'gallery', to: "page#gallery" 
  get 'invite', to: "page#invite" 
  get 'track', to: "page#track" 
  get 'promotion', to: "page#promotion" 
  get 'top_design', to: "page#top_design" 
  get 'demo',to: 'page#demo'
  get 'terms',to: 'page#terms'
  get 'developer',to: 'page#developer'
  get 'careers',to: 'page#careers'
  get 'faq',to: 'page#faq'
  get 'privacy',to: 'page#privacy'
  get 'terms',to: 'page#terms'
  get 'contact',to: 'page#contact'
  get 'testimonial',to: 'page#testimonial'
  get 'affiliate',to: 'page#affiliate'
  get 'spotting',to: 'page#spotting'
  post "page/select_currency" 
  post "shipping/address_edit"
  post "page/newsletter_submit" 
  root :to => redirect("https://www.facebook.com/goxskin")

end

Rails.application.routes.draw do
  root 'application#hello'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # site root sends to the application controller
  # the hello action says hi #{name} unless nobody is logged in
  # if nobody is logged in it redirects to login, which calls the new view of the sessions controller
end

# The aliases are not required as those are the defaults, but I included for simplicity

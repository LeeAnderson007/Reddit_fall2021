Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #rough API
  root "subs#index"
  
  resources :subs do
   resources :topics
  end

  resources :topics do
    resources :comments
  end
  #resources :subs      this will make everything below automatically, this is a shortcut
  # get '/subs', to:'subs#index' #all subs
  # get '/subs/:id', to:'subs#show' # one subs
  # get '/subs/new', to:'subs#new' # form for a new sub
  # post '/subs', to:'subs#create' # takes data from form adds to db
  
  # get '/subs/:id/edit', to:'subs#edit' # form for a editings sub
  # put '/subs/:id', to:'subs#update' # updates sub to db
  # patch '/subs/:id', to:'subs#update' # updates sub to db
  # delete '/subs/:id', to:'subs#destroy' # destroy sub from db
  
  #custom routes example
  #get 'tacosyo/:bobross', to:"words#hotdog"
  #get 'sub_top', to:"#top5"
end

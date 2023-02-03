Rails.application.routes.draw do
  # root 'static_pages#landing'

  root to: "pages#home"
# ============================


resources :blogs

# ============================

get 'books', to: 'books#index'

# ============================
  get 'about-us', to: 'static_pages#about_us'

  get 'sign-up', to: 'users#new'

  get 'users', to: 'users#index'
end



# resources :blogs
# about_us links to views/static_pages and then to the about_us.html.rb
# get/url will always be a dash, to/url will always be snakecase
#   #index
# get 'blogs', to: "blogs#index"

# #new
# get 'blog/new', to: "blogs#new"

# # create
# post 'blogs', to: "blogs#create"

# # show
# # localhost:3000/blogs/5
# get 'blogs/:id', to: "blogs#show"

# # edit
# get 'blogs/:id/edit', to: "blogs#edit"

# # update
# put 'blogs/:id', to: "blogs#update"

# # delete/destroy
# delete 'blogs/:id', to: "blogs#destroy"




  # resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "pages#landing"
  # root "articles#index"
  # root "controler#action"

  # root to: "pages#landing"  same as above
  # get "/", to: "pages#landing" same as above
# end


# Where routes live
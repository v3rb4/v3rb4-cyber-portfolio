Rails.application.routes.draw do
  get "blog_posts/index"
  get "blog_posts/show"
  get "blog_posts/new"
  get "blog_posts/edit"
  get "blog_posts/create"
  get "blog_posts/update"
  get "blog_posts/destroy"
  get "blog_posts/drafts"
  get "projects/index"
  get "projects/show"
  get "projects/new"
  get "projects/edit"
  get "projects/create"
  get "projects/update"
  get "projects/destroy"
  get "pages/home"
  get "pages/about"
  get "pages/contact"
  # Root route
  root 'pages#home'

  # Static pages
  get 'about', to: 'pages#about'
  
  # Projects routes
  resources :projects do
    member do
      post 'toggle_featured'
    end
  end

  # Blog routes
  resources :blog_posts, path: 'blog' do
    collection do
      get 'drafts'
    end
  end

  # Contact form route (optional)
  get 'contact', to: 'pages#contact'
  post 'contact', to: 'pages#create_contact'
end

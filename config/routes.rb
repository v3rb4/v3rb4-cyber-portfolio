Rails.application.routes.draw do
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

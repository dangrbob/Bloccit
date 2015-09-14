Rails.application.routes.draw do
  get 'comments/new'

  devise_for :users
  resources :users
  
  resources :topics do
    resources :posts, except: [:index] do
      resources :comments, only: [:create, :destroy]
    end  
  end  
  

  get 'about' => 'welcome#about'

 root to: 'welcome#index'

end

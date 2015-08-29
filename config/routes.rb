Rails.application.routes.draw do


  devise_for :users
  


  resources :topics do
    resources :posts, except: [:index] do
      resources :postsummaries, except: [:index, :edit]
    end 
  end  
  

  get 'about' => 'welcome#about'

 root to: 'welcome#index'

end

Rails.application.routes.draw do
  root 'gossips#index'


  resources :welcome  # notre ancien get 'welcome/:first_name' on a remplace :first_name par :id dans le controller, et la view, to: 'welcome#show' #route dynamique vers l URL cachee
  resources :team
  resources :contact
  resources :gossips
  resources :users
  resources :cities
  resources :comments

  resources :gossips do
    resources :comments
  end
end
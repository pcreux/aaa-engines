Rails.application.routes.draw do
  namespace :forum do
    resources :posts
  end
end

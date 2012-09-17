CodeArmory::Application.routes.draw do
  devise_for :users

  resources :snippets
  %w(get post).each do |method|
    send(method, "/auth/:provider/callback" => "users#register")
  end
  root :to => 'home#index'
end

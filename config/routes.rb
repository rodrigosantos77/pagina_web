Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"




#rota para a pagina (sobre) about
#get 'home/sobre'
get '/sobre', to: 'sobre#index'


#adicionando as rotas da pagina index da controller Home
root 'home#index'

end

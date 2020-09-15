Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # A rota é feita de:
  # 1) Verbo HTTP (GET / POST / PATCH / PUT / DELETE)
  # 2) Caminho Relativo da Url (/, ou /adilson, ou /bands)
  # 3) Qual controller responde à essa requisição
  # 4) Qual ação desse controller vai ser executada

  # verbo 'caminho', to: 'controller#ação', as: 'prefix_name'
  get '/home', to: 'pages#home', as: 'home'
  get '/about', to: 'pages#about_us', as: 'about'

  # É para mudar a página sem path (tudo dpos da /) da aplicação
  root to: 'pages#home'

  get '/mastodon', to: 'bands#best'

end

# 1a coisa a fazer: pensar na rota!!!!
# 2a coisa a fazer: ir no controller e codar o que precisa
# 3a coisa a fazer: implementar a view!

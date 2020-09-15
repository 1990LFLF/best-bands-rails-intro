# Como requisições HTTP funcionam

Primeiro, precisa existir um cliente (notebook com google chrome instalado) e um
servidor (rails server, por exemplo).

Segundo, o cliente faz uma requisição HTTP que é composta de:

* URL + Path
* Verbo (GET/POST/PUT/PATCH/DELETE)
* Headers
* Query Parameters (no final da url teria um ?param_name=valor)
* Body (idealmente presente apenas em requisições PUT, PATCH e POST)

E essa requisição é recebida pelo servidor, que após processar o pedido devolve
uma resposta. Esta resposta muitas vezes é uma página HTML, a mesma página HTML
que vemos no nosso browser depois de acessarmos http://www.google.com por exemplo.

Lembrando que quando enviamos um POST, PATCH ou PUT, nós enviamos os parâmetros
dentro do BODY da requisição, ao invés de enviar como Query Parameters.

# Como implementar uma ação do usuário no Rails

* Fazer a rota
* Fazer o controller e a ação que a rota se refere
* Fazer a view

Lembrando que um controller que trata de Meal deve se chamar MealsController, e
as views deste controller estarão em app/views/meals/, e todas estas views
terão o nome das ações (ex: index) com o formato correto para termos HTML e ruby
(ex: index.html.erb)

# routes.rb

A sintaxe para criarmos uma rota segue o seguinte formato: verb 'path', to: 'controller#action'

Então alguns exemplos:

* get 'about_us', to: 'pages#about'
* get 'bands', to: 'bands#index'

Podemos definir um root path (homepage do sistema) fazendo:

* root to: 'controller#action'

E, por último, temos também os prefixos das rotas, que são úteis quando estamos
construindo um link (a href="") a partir de código ruby (link_to):

* get 'about_us', to: 'pages#about', as: 'about'

Isso nos permite fazer um link_to "Descubra mais", about_path

# Controllers & Variáveis de Instância & Params

Lembrando que se você quer que uma variável definida na ação "x" esteja acessível
dentro da view "x.html.erb", você precisa declará-la como uma variável de instância.

Ex:

* @bands = ['Mastodon', 'Pink Floyd']

Fora isso, todo parâmetro enviado por uma requisição é acessível a partir do params.
Este params funciona como uma hash, então se o parâmetro enviado era "band_name",
você acessa ele no controller/action (ou na view) como params[:band_name].

# Views

Para executar código Ruby dentro da view, você precisa usar os icecream brackets.

* <% codigo que será executado mas não impresso no HTML %>
* <%= código que será executado E TAMBÉM impresso no HTML %>

Lembrando que em loops, nós não imprimimos o loop em si.. Mas geralmente imprimimos
algo do bloco.

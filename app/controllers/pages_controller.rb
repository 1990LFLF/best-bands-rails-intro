class PagesController < ApplicationController

  # O quê é uma ação (action)??
  # Um método definido dentro de um Controller

  # Variável de instância
  # Permite compartilhar uma variável em uma ação do controller
  # com a view de mesmo nome!
  def home
    @bands = ["Mastodon", "Arcadea", "Black Sabbath", "Pink Floyd"]

    if params[:band_name]
      @bands = @bands.select { |band| band == params[:band_name] }
    end
  end

  # IMPORTANTE!!
  # A variável de instância definida dentro de uma ação
  # NÃO É COMPARTILHADA com as outras ações
  def about_us
  end

end

class ContatosController < ApplicationController
  before_action :set_contato, only: [:show, :edit, :update, :destroy]

  def index
    @contatos = Contato.all
  end

  def show
  end

  def new
    @contato = Contato.new
  end

  def edit
  end

  def create  
    @contato = Contato.new(contato_params)
    if @contato.save
      redirect_to @contato, notice: "Contato foi criado com sucesso!"
    else
      redirect_to Contato.all, notice: "Contato não foi criado!"
    end
  end

  def update
    respond_to do |format|
      if @contato.update(contato_params)
        redirect_to @contato, notice: "Contato foi atualizado com sucesso!"
      else
        redirect_to Contato.all, notice: "Contato não foi atualizado!"
      end
    end
  end

  def destroy
    @contato.destroy
    respond_to do |format|
      redirect_to contatos_url, notice: 'Contato for excluído.'
    end
  end

  private
    def set_contato
      @contato = Contato.find(params[:id])
    end

    def contato_params
      params.require(:contato).permit(:nome, :telefone)
    end
end

class ContatosController < ApplicationController
  before_action :set_contato, only: [:show, :edit, :update, :destroy]

  def new
    @contato = Contato.new
  end

  def index
    @contatos = Contato.all
  end

  def show
    @contato = Contato.find(params[:id ])
  end

  def edit
    @contato = Contato.find(params[:id]) 
  end

  def create
    @contato = Contato.new(contato_params)
    if @contato.save
      redirect_to contatos_index_path
    else
      render action: :new
    end
  end

  def update
    @contato = Contato.find(params[:id])
      if @contato.update(contato_params)
        redirect_to contatos_path
      else
        render action: :edit
      end
  end

  def destroy
    @contato = Contato.find(params[:id])
    @contato.destroy
    redirect_to contatos_url
  end

  private
    def set_contato
      @contato = Contato.find(params[:id])
    end
    
    def contato_params
      params.require(:contato).permit(:nome, :telefone)
    end
end


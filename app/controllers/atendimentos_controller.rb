class AtendimentosController < ApplicationController
  before_action :logged_in_paciente, only: [:create, :destroy]
  
  def create
    @atendimento = current_paciente.atendimentos.build(atendimento_params)
    if @atendimento.save
      flash[:success] = "Atendimento solicitado!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
  end
  
  private

    def atendimento_params
      params.require(:atendimento).permit(:situacao, :sintomas, :tempoCheg, :tipoAtendimento)
    end
end

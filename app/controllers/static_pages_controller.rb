class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @atendimento  = current_paciente.atendimentos.build
      @feed_items = current_paciente.feed
    end
  end

  def help
  end
end

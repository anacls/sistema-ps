class PacientesController < ApplicationController
  before_action :logged_in_paciente, only: [:edit, :update, :destroy]
  before_action :correct_paciente,   only: [:edit, :update, :destroy]
  # GET /pacientes
  # GET /pacientes.json
  def index
    @pacientes = Paciente.all
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
    @paciente = Paciente.find(params[:id])
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit
    @paciente = Paciente.find(params[:id])
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)

    respond_to do |format|
      if @paciente.save
        log_in @paciente
        format.html { redirect_to @paciente, notice: 'Paciente was successfully created.' }
        format.json { render :show, status: :created, location: @paciente }
        else
          format.html { render :new }
          format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  def update
    @paciente = Paciente.find(params[:id])
    if @paciente.update_attributes(paciente_params)
      flash[:success] = "Profile updated"
      redirect_to @paciente
    else
      render 'edit'
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Paciente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_params
      params.require(:paciente).permit(:nome, :endereco, :data_nasc, :rg, :cpf, :email, :password, :telefone, :password_confirmation, :cep, :rua, :numero, :cidade, :bairro)
    end
    
    
    def correct_paciente
      @paciente = Paciente.find(params[:id])
      redirect_to(root_url) unless current_paciente?(@paciente)
    end
end

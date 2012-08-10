class VeiculosController < ApplicationController

  def index
    @veiculos = Veiculo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @policials }
    end
  end

  def new 
    @policial = Policial.find(params[:policial_id]) 
    @veiculo = @policial.veiculos.build
  end

 def create
	@policial = Policial.find(params[:policial_id])
        @veiculo = @policial.veiculos.build(params[:veiculo])
        if @veiculo.save
          redirect_to policial_path(@policial), :notice => "Veiculo cadastrado com sucesso"
        else
          render action: "new"
        end
 end

 def destroy
	@policial = Policial.find(params[:policial_id])
	@veiculo = @policial.veiculos.find(params[:id])
	@veiculo.destroy
	redirect_to policial_path(@policial)
 end
end

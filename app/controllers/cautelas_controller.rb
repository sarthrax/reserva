class CautelasController < ApplicationController

  def create
     @policial = Policial.find(params[:policial_id])
     @cautela = @policial.cautelas.build(params[:cautela])
     @cautela.data_inicio = Time.now.to_datetime
     if @cautela.save
         redirect_to policial_path(@policial), :notice => "Cautela cadastrada com sucesso"
     else
         render action: "new"
     end
  end

  def new
    @policial = Policial.find(params[:policial_id])
    @cautela = @policial.cautelas.build
  end

end

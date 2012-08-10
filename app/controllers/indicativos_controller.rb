class IndicativosController < ApplicationController
  # GET /indicativos
  # GET /indicativos.json
  def index
    @indicativos = Indicativo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @indicativos }
    end
  end

  # GET /indicativos/1
  # GET /indicativos/1.json
  def show
    @indicativo = Indicativo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @indicativo }
    end
  end

  # GET /indicativos/new
  # GET /indicativos/new.json
  def new
    @indicativo = Indicativo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @indicativo }
    end
  end

  # GET /indicativos/1/edit
  def edit
    @indicativo = Indicativo.find(params[:id])
  end

  # POST /indicativos
  # POST /indicativos.json
  def create
    @indicativo = Indicativo.new(params[:indicativo])

    respond_to do |format|
      if @indicativo.save
        format.html { redirect_to @indicativo, notice: 'Indicativo was successfully created.' }
        format.json { render json: @indicativo, status: :created, location: @indicativo }
      else
        format.html { render action: "new" }
        format.json { render json: @indicativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /indicativos/1
  # PUT /indicativos/1.json
  def update
    @indicativo = Indicativo.find(params[:id])

    respond_to do |format|
      if @indicativo.update_attributes(params[:indicativo])
        format.html { redirect_to @indicativo, notice: 'Indicativo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @indicativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicativos/1
  # DELETE /indicativos/1.json
  def destroy
    @indicativo = Indicativo.find(params[:id])
    @indicativo.destroy

    respond_to do |format|
      format.html { redirect_to indicativos_url }
      format.json { head :no_content }
    end
  end
end

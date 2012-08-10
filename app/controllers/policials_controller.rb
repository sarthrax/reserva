class PolicialsController < ApplicationController
  # GET /policials
  # GET /policials.json
  def index
    @policials = Policial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @policials }
    end
  end

  # GET /policials/1
  # GET /policials/1.json
  def show
    @policial = Policial.find(params[:id])
    @items = Item.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @policial }
    end
  end

  # GET /policials/new
  # GET /policials/new.json
  def new
    @policial = Policial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @policial }
    end
  end

  # GET /policials/1/edit
  def edit
    @policial = Policial.find(params[:id])
  end

  # POST /policials
  # POST /policials.json
  def create
    @policial = Policial.new(params[:policial])

    respond_to do |format|
      if @policial.save
        format.html { redirect_to @policial, notice: 'Policial was successfully created.' }
        format.json { render json: @policial, status: :created, location: @policial }
      else
        format.html { render action: "new" }
        format.json { render json: @policial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /policials/1
  # PUT /policials/1.json
  def update
    @policial = Policial.find(params[:id])

    respond_to do |format|
      if @policial.update_attributes(params[:policial])
        format.html { redirect_to @policial, notice: 'Policial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @policial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policials/1
  # DELETE /policials/1.json
  def destroy
    @policial = Policial.find(params[:id])
    @policial.destroy

    respond_to do |format|
      format.html { redirect_to policials_url }
      format.json { head :no_content }
    end
  end
end

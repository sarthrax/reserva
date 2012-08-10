class ItemsController < ApplicationController
 def create
        @indicativo = Indicativo.find(params[:indicativo_id])
        @item= @indicativo.items.create(params[:item])
        redirect_to indicativo_path(@indicativo)
 end

 def destroy
	@indicativo = Indicativo.find(params[:indicativo_id])
        @item= @indicativo.items.find(params[:id])
        @item.destroy
	redirect_to indicativo_path(@indicativo)
 end

 def index
        @items = Item.all
        respond_to do |format|
          format.html
          format.json { render json: @items }
        end
 end
end

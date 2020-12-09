class ItemsController < ApplicationController
  def index
    items = Items.all
    render json: ItemSerializer.new(items)
  end

  def show
    item = Item.find(params[:id])
  end

  def create
    item = Item.new(params[item])
  end
end
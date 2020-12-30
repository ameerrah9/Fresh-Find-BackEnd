class ItemsController < ApplicationController
  before_action :set_item, only: [:destroy]

  # get /items
  def index
    render json: Item.all
  end

  # post /items
  def create
    item = Item.new(item_params)
    if item.save
      render json: ItemSerializer.new(item)
    else
      render json: { errors: item.errors.full_messages }
    end
  end

  def destroy
    item = Item.find(params[:id])

    if item.destroy
      render json: { message: 'Item deleted' }
    else
      render json: item.errors
    end
  end

  private

  def set_item
    item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:content, :list_id)
  end
end

class ItemsController < ApplicationController
  before_action :set_item, only: %i[show update destroy]

  # get /items
  def index
    items = Item.all
    render json: items
    # render json: item.all.map { |item| itemSerializer.new(item) }
  end

  # get /items/1
  def show
    # item = item.find(params[:id])
    # render json: itemSerializer.new(item)
    render json: item
  end

  # post /items
  def create
    item = Item.new(item_params)
    if item.save
      render json: item, status: :accepted
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    item = Item.find(params[:id])

    if item.destroy
      flash[:success] = 'Fresh item was successfully deleted.'
      render json: item, status: :accepted
    else
      flash[:error] = 'Something went wrong'
      render json: item.errors
    end
  end

  private

  def item_params
    params.require(:item).permit(:content, :list_id)
  end
end

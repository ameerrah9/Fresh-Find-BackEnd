class ItemsController < ApplicationController
  # get /items
  def index
    items = Item.all
    render json: items
  end

  # post /items
  def create
    item = Item.new(item_params)
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }
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

class ListsController < ApplicationController
  # get /lists
  def index
    lists = List.all
    render json: ListSerializer.new(lists)
  end

  # post /lists
  def create
    byebug
    list = List.new(list_params)
    if list.save
      render json: ListSerializer.new(list), status: :accepted
    else
      render json: { errors: list.errors.full_messages }
    end
  end

  def destroy
    list = List.find(params[:id])

    if list.destroy
      flash[:success] = 'Fresh List was successfully deleted.'
    else
      flash[:error] = 'Something went wrong'
      render json: { errors: list.errors.full_messages }
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end

class ListsController < ApplicationController
  # get /lists
    def index
      lists = List.all
      render json: ListSerializer.new(lists)
    end
  
    def show
      list = List.find(params[:id])
      render json: ListSerializer.new(list).serializable_hash
    end
  # post /lists
  def create
    list = List.new(list_params)
    if list.save
      render json: list, status: :accepted
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

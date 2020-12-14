class ListsController < ApplicationController
  before_action :set_list, only: %i[show update destroy]

  # get /lists
  def index
    lists = List.all
    render json: lists
  end

  # get /lists/1
  def show
    # list = List.find(params[:id])
    # render json: ListSerializer.new(list)
    render json: list
  end

  # post /lists
  def create
    list = List.new(list_params)
    if list.save
      render json: list
    else
      render json: list.errors
    end
  end

  def destroy
    list = List.find(params[:id])

    if list.destroy
      flash[:success] = 'Fresh List was successfully deleted.'
      render json: list
    else
      flash[:error] = 'Something went wrong'
      render json: list.errors
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end

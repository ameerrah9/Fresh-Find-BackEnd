class ListsController < ApplicationController
  def index
    lists = List.all
    render json: ListSerializer.new(lists)
  end

  def show
    list = list.find(params[:id])
  end

  def create
    # byebug
    list = List.new(list_params)

    render json: ListSerializer.new(list) if list.save
  end

  private

  def list_params
    params.require(:list).permit(:content)
  end
end

class ListsController < ApplicationController
  def index
    lists = List.all
    render json: ListSerializer.new(lists)
  end

  def show
    list = list.find(params[:id])
  end

  def create
    list = list.new(params[:list])
  end

end

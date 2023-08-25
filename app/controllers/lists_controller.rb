class ListsController < ApplicationController
  before_action :set_list, only: %i[show]

  def index
    @lists = List.all
    @list = List.new
  end

  def new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @movies = Movie.all
    @bookmark = Bookmark.new
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end

  def set_list
    @list = List.find(params[:id])
  end
end

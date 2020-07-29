class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @item.images.new
    # @items = Item.includes(:images)
  end

  def create
    # @item = Item.new(item_params)
    # if @item.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end

  def update
  end

  private

  def item_params
    params.require(:item).permit(:name, images_attributes: [:src])
  end
end

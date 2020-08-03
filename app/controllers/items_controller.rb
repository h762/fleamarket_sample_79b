class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @item.images.new
    # @items = Item.includes(:images)
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
  end

  private

  def item_params
    params.require(:item).permit(:name, images_attributes: [:src])
  end
end
# , :description, :price, :buyer_id, :seller_id, :category_id, :brand_id, :item_condition_id, :delovery__cost_id, :seller_region_id, :preparation_for_shipment_id, :status_id, :user_id, :deal_ending_day

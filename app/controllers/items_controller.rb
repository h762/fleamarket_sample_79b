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
    binding.pry
    if @item.save
      redirect_to root_path, notice: "ok"
    else
      # flash.now[:alert] = 'no'
      redirect_to root_path, notice: "no"
    end
  end

  def update
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :brand_id, :item_condition_id, :delivery_cost_id, :seller_region_id, :preparation_for_shipment_id, :price)
  end
end
# :buyer_id, :seller_id, :category_id, :brand, , :deloveryCost_id, :prefercture_id, :day_id, :status_id, :user_id, :deal_ending_day
# , :images_attributes: [:src] , :description,  :condition_id :price,
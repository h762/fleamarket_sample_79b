class Item < ApplicationRecord

  has_many :images, dependent: :destroy
  belongs_to :user
  belongs_to :brand
  belongs_to_active_hash :category
  belongs_to_active_hash :delivery_cost
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :seller_region
  belongs_to_active_hash :preparation_for_shipment
  belongs_to_active_hash :status
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"

  accepts_nested_attributes_for :images, allow_destroy: true
  
  with_options presence: true do 
    validates :name
    validates :description
    validates :price
    validates :category_id
    validates :item_condition_id
    validates :delivery_cost_id
    validates :preparation_for_shipment_id
    validates :image_ids
  end
end
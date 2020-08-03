class Item < ApplicationRecord

  has_many :images, dependent: :destroy
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  belongs_to_active_hash :delivery_costA
  belongs_to_active_hash :item_conditionA
  belongs_to_active_hash :seller_region
  belongs_to_active_hash :preparation_for_shipmentA
  belongs_to_active_hash :statusA
  belongs_to :seller, class_name: "User", foreign_key: "seller_id", option: true
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id", option: true

  accepts_nested_attributes_for :images, allow_destroy: true
  
  with_options presence: true do 
    validates :name
    validates :decription
    validates :price
    validates :category_id
    validates :item_condition_id
    validates :delivery_cost_payer_id
    validates :seller_region_id
    validates :preparation_for_shipment_id
    validates :image_id
  end


  # extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to brand
end
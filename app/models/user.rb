class User < ApplicationRecord
  has_many :items
  has_many :seller_items, foreign_key: "seller_id", class_name: "Item", option: true
  has_many :buyer_items, foreign_key: "buyer_id", class_name: "Item", option: true
end

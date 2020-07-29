class Item < ApplicationRecord
  enum region: {
    北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
    新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
    岐阜県:21,静岡県:22,愛知県:23,三重県:24,
    滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
    鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
    徳島県:36,香川県:37,愛媛県:38,高知県:39,
    福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,沖縄県:47
  }


  has_many :images, dependent: :destroy
  belongs_to :category
  belongs_to :brand
  belongs_to_active_hash :delivery_cost
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :seller_region
  belongs_to_active_hash :preparation_for_shipment
  belongs_to_active_hash :status
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User"

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
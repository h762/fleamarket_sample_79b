class DeliveryCost < ActiveHash::Base
  field :delivery_cost
  add id: 1, payer: "送料込み(出品者負担)"
  add id: 2, payer: "着払い(購入者負担)"
end

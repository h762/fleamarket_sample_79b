class CreateSellerRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :seller_regions do |t|

      t.string :prefercture, null: false
      t.timestamps
    end
  end
end

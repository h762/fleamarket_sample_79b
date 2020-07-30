class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|

      t.references :seller_items
      t.references :buyer_items
      t.timestamps
    end
  end
end

class CreateItemConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :item_conditions do |t|

      t.string :condition, null: false
      t.timestamps
    end
  end
end

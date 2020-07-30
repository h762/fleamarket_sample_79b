class CreatePreparationForShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :preparation_for_shipments do |t|

      t.string :day, null: false
      t.timestamps
    end
  end
end

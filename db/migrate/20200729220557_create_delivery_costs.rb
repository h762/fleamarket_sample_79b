class CreateDeliveryCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_costs do |t|

      t.string :payer, null: false
      t.timestamps
    end
  end
end

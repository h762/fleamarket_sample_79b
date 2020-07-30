class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|

      t.references :item, foreign_key: true, null: false
      t.string :image_url, null: false
      t.string :src
      t.timestamps
    end
  end
end

class CreateGirls < ActiveRecord::Migration
  def change
    create_table :girls do |t|
      t.string :product_name
      t.string :cycle_weight
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end

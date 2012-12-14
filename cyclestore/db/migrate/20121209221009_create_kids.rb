class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :products_name
      t.string :cycle_weight
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end

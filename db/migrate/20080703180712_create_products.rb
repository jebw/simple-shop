class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.boolean :published
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end

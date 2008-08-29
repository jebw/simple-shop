class JoinProductsToCategories < ActiveRecord::Migration
  def self.up
  	create_table :categories_products, :id => false do |t|
  		t.column :category_id, :integer
  		t.column :product_id, :integer
  	end
  	
  	add_index :categories_products, [ :category_id, :product_id ], :primary => true, :unique => true
  end

  def self.down
  	drop_table :categories_products
  end
end

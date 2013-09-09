class CreateProductquantities < ActiveRecord::Migration
  def change
    create_table :productquantities do |t|
      t.integer :id
      t.integer :purchasesid
      t.integer :quantity

      t.timestamps
    end
  end
end

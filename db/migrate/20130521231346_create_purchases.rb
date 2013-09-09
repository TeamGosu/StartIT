class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :id
      t.integer :productquantityid
      t.integer :customerid
      t.string :purchasedate

      t.timestamps
    end
  end
end

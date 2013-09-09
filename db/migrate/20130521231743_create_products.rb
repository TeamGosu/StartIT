class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :productname
      t.string :productprice

      t.timestamps
    end
  end
end

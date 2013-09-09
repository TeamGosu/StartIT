class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :id
      t.string :fname
      t.string :lname
      t.string :homephone
      t.string :workphone
      t.string :mobilephone
      t.string :email

      t.timestamps
    end
  end
end

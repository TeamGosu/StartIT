class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :id
      t.integer :customerid
      t.integer :trainingid

      t.timestamps
    end
  end
end

class CreateUserbookings < ActiveRecord::Migration
  def change
    create_table :userbookings do |t|

      t.timestamps
    end
  end
end

class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.integer :id
      t.integer :bookingid
      t.string :date
      t.string :time
      t.string :coursename
      t.text :coursedescription
      t.string :region

      t.timestamps
    end
  end
end

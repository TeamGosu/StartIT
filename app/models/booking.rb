class Booking < ActiveRecord::Base
  attr_accessible :customerid, :id, :trainingid

  belongs_to :Customer
  belongs_to :Training
end

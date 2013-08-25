class Training < ActiveRecord::Base
  attr_accessible :bookingid, :coursedescription, :coursename, :date, :id, :region, :time

  has_many :Booking
  has_many :Customer, :through => :Booking
end

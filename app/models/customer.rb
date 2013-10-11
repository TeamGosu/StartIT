class Customer < ActiveRecord::Base
  attr_accessible :email, :fname, :homephone, :id, :lname, :mobilephone, :workphone, :pic

  has_attached_file :pic

  belongs_to :Customer
  belongs_to :Training
end

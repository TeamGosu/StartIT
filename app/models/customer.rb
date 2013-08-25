class Customer < ActiveRecord::Base
  attr_accessible :email, :fname, :homephone, :id, :lname, :mobilephone, :workphone

  belongs_to :Customer
  belongs_to :Training
end

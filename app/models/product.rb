class Product < ActiveRecord::Base
  attr_accessible :id, :productname, :productprice

  has_many :ProductQuantity
  has_many :Customer ,:through => :ProductQuantity
end

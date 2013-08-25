class Purchase < ActiveRecord::Base
  attr_accessible :customerid, :id, :productquantityid, :purchasedate

  belongs_to :Customer
  has_many :ProductQuantity
  has_many :Products, :through => :ProductQuantity
end

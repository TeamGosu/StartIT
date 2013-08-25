class Productquantity < ActiveRecord::Base
  attr_accessible :id, :purchasesid, :quantity

  belongs_to :Purchases
  belongs_to :Products
end

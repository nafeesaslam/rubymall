class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  def total_price
	self.product.price  ||= 0.0 
 	product.price * quantity
  end
 
end

  

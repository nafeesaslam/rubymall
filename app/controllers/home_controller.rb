class HomeController < ApplicationController
  def index
	@products = Product.all.limit(8) 
	@cart = current_cart
  end
end

class MenjeansController < ApplicationController
  def index
	@products = Product.all 

  end
end

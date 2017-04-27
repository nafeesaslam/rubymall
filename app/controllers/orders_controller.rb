class OrdersController < InheritedResources::Base
  
  def new
	@cart = current_cart
	if @cart.line_items.empty?
	   redirect_to products_path,:notice=>"Oh!No Cart is Empty"
       	 return
	end
	@order = Order.new
	respond_to do |format|
	  format.html
	  format.xml {render :xml => @order}
	end
	end
  def create
  	@order = Order.new(order_params)
	@order.add_line_items_from_cart(current_cart)
	respond_to do |format|
  if @order.save
	Cart.destroy(session[:cart_id])
	session[:cart_id] = nil
	format.html { redirect_to(products_path, :notice =>'Thank you for your order.' ) }
	format.xml { render :xml => @order, :status => :created,:location => @order }
  else
	format.html { render :action => "new" }
	format.xml { render :xml => @order.errors,:status => :unprocessable_entity }
end
end
  end

  private

    def order_params
      params.require(:order).permit(:name, :address, :email, :pay_type)
    end
end


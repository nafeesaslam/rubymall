ActiveAdmin.register Order do

  show do |order|

  	panel "Customer details" do
    		attributes_table_for order, :name, :address, :email, :created_at
  	end

  

  	panel("Products for this order") do
   
   		table_for(order.line_items) do
    			column "Product_ID" do|item|
 				item.product.id
   			 end         


    			column "Snap" do |item|
				div  do
	 				image_tag item.product.image_url,:class => "image_at_admin"
         			end
      			end

      			column "Product Name" do |item| 
        			item.product.name
      			end
      
      			column "Price" do |item| 
	 			div :class=>"symbol" do
					"₹"
	 			end
				div :class => "price" do
             	 			item.product.price
    	  			end  
        		end
     
			column "Quantity" do |item| 
        			item.quantity
      			end

			column "Total " do |item| 
        			div :class=>"symbol" do
					"₹"
	  			end
				div :class => "price" do
              				item.total_price
    	  			end 
      			end
	
		end
	end

end

 
 
 
end





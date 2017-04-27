ActiveAdmin.register Product do

permit_params :list, :of, :attributes, :on, :model, :name, :brand,  :subcategory, :description, :image, :price, :quantity
  index do
    column :image_url do |product|
         div  do
	 	image_tag product.image_url,:class => "image_at_admin"
         end
    end
    
 
    column :name do |product|
	   div :class => "name" do
              product.name
    	  end
    end   
    column :price do |product|
	  div :class=>"symbol" do
		"₹"
	  end
          div :class => "price" do
              product.price
    	  end       
    end
	actions
         
  end
    show do
        div  do
	 	image_tag product.image_url,:class => "image_at_admin2"
         end
        div :class=>"sidebar" do
		
		div :class=>"proname" do  		
		product.name
		end
		div :class=>"underline" do

		end
		div :class=>"proname2" do                
		product.brand
		end
                
		div :class=>"leftpricesymbol" do 
		 "₹"
		end
		div :class=>"leftprice" do   
		product.price
		end 

		
		div :class=>"proname3" do
		"Quick Overview:"
		end
		div :class=>"description" do		
		product.description
		end
		    		
		    
	end

    end
  
  



end

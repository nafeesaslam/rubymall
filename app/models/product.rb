class Product < ActiveRecord::Base
 mount_uploader :image, ImageUploader
 validates_presence_of :name, :brand, :subcategory, :description, :image, :price, :quantity
 validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
 validates_uniqueness_of :name
 has_many :line_items
 has_many :orders, :through => :line_items
 has_many :reviews
 before_destroy :ensure_not_referenced_by_any_line_item

 def ensure_not_referenced_by_any_line_item
     if line_items.count.zero?
        return true
     else
        errors.add(:base, 'Line Items present' )
     return false
     end
 end
 
 

end


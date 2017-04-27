json.array!(@products) do |product|
  json.extract! product, :id, :name, :brand, :category, :subcategory, :description, :image, :price
  json.url product_url(product, format: :json)
end

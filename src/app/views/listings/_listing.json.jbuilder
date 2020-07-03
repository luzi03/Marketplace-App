json.extract! listing, :id, :title, :description, :category_id, :suburb, :city, :price, :deposit, :availability, :created_at, :updated_at
json.url listing_url(listing, format: :json)

class Listing < ApplicationRecord

  #validates :title, :description, :suburb, :city, :price, :deposit, :available_from, :available_to,  presence: true
  belongs_to :category
  has_one_attached :picture
  belongs_to :user
  has_one :order
end

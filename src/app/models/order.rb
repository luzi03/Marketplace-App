class Order < ApplicationRecord
  belongs_to :user #user is lesee 
  belongs_to :listing
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_messageable

  has_many :listings
  has_many :orders
  has_one_attached :picture
  
  def name
    "#{username}"
  end

  def mailboxer_email(object)
    nil
  end

end

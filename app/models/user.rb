class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def customer
    type == "Customer"
  end

  def professional?
    type == "Professional"
  end

  has_many_attached :photos
  has_one_attached :photo
end

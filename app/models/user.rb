class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def customer?
    type == "Customer"
  end

  def professional?
    type == "Professional"
  end

  has_many_attached :photos
end

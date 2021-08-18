class Appointment < ApplicationRecord
  belongs_to :customer
  belongs_to :professional
  belongs_to :sub_service
end

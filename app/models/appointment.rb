class Appointment < ApplicationRecord
  belongs_to :customer
  belongs_to :professional
  belongs_to :service_id
end

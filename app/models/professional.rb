class Professional < User
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :reviews, class_name: "Review", foreign_key: "professional_id", dependent: :destroy
  has_many :appointments, class_name: "Appointment", foreign_key: "professional_id", dependent: :destroy
end

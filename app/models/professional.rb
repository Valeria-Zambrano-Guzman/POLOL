class Professional < User
  has_many :reviews, class_name: "Review", foreign_key: "professional_id", dependent: :destroy
  has_many :appointments, class_name: "Appointment", foreign_key: "professional_id", dependent: :destroy
  has_many :specialities, class_name: "Specialitie", foreign_key: "professional_id", dependent: :destroy
end

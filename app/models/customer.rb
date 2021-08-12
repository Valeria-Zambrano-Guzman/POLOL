class Customer < User
    has_many :reviews, class_name: "Review", foreign_key: "customer_id", dependent: :destroy
    has_many :appointments, class_name: "Appointment", foreign_key: "customer_id", dependent: :destroy
end

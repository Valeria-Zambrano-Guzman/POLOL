class Service < ApplicationRecord
    has_many :service_specialities, class_name: "Specialitie", foreign_key: "service_id", dependent: :destroy
end


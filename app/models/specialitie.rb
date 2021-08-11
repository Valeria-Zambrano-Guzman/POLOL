class Specialitie < ApplicationRecord
  belongs_to :professional, class_name: "User"
  belongs_to :service, class_name: "Service"
end

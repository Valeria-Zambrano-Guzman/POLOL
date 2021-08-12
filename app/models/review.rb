class Review < ApplicationRecord
  belongs_to :customer, class_name: "User"
  belongs_to :professional, class_name: "User"
end


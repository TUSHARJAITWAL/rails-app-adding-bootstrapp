class Student < ApplicationRecord
  validates :first_name,:last_name,:email,:age,:address,presence: true
end

class Student < ApplicationRecord
  has_many :skill_students
  has_many :skills, through: :skill_students
end

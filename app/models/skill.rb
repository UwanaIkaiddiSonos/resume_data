class Skill < ApplicationRecord
  has_many :skill_students
  has_many :students, through: :skill_students
end

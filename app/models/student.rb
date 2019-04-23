class Student < ApplicationRecord
  has_many :educations
  has_many :experiences
  has_many :capstones
  has_many :skill_students
  has_many :skills, through: :skill_students
  has_many :educations
  has_many :experiences
  has_many :skills
end

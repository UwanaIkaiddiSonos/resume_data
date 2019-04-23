class SkillStudent < ApplicationRecord
  belongs_to :skill
  belongs_to :student
end

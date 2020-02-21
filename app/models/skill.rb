class Skill < ApplicationRecord
  has_many :candidate_skills, dependent: :destroy
  has_many :candidates, through: :candidate_skills
  has_many :position_skills, dependent: :destroy
  has_many :positions, through: :position_skills
end

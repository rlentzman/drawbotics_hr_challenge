class Skill < ApplicationRecord
  has_many :candidate_skills, dependent: :destroy
  has_many :candidates, through: :candidate_skills
  has_many :position_skills, dependent: :destroy
  has_many :positions, through: :position_skills
  has_many :recruiter_skills, dependent: :destroy
  has_many :recruiters, through: :recruiter_skills
end

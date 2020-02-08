class Position < ApplicationRecord
  belongs_to :user
  has_many :candidates, through: :candidate_positions
  has_many :skills, through: :position_skills
  has_many :scorecards
end

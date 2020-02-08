class Candidate < ApplicationRecord
  has_many :positions, through: :candidate_positions
  has_many :skills, through: :candidate_skills
  has_many :appointments
  has_many :scorecards
end

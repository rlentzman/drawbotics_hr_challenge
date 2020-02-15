class Candidate < ApplicationRecord
  has_many :candidate_positions
  has_many :positions, through: :candidate_positions
  has_many :candidate_skills
  has_many :skills, through: :candidate_skills
  has_many :appointments
  has_many :scorecards

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end

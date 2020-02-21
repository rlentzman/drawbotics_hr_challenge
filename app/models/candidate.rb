class Candidate < ApplicationRecord
  has_many :applications, dependent: :destroy
  has_many :positions, through: :applications
  has_many :scorecards, through: :applications
  has_many :candidate_skills, dependent: :destroy
  has_many :skills, through: :candidate_skills
  has_many :appointments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  STATUSES = ["junior", "mid", "senior"]
  validates :seniority, inclusion: { in: STATUSES }
end

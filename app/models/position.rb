class Position < ApplicationRecord
  belongs_to :user, optional: true
  has_many :candidates, through: :candidate_positions
  has_many :position_skills, dependent: :destroy
  has_many :skills, through: :position_skills
  has_many :scorecards
  validates :title, presence: true
  validates :company, presence: true

  STATUSES = ["junior", "mid", "senior"]
  validates :seniority, inclusion: { in: STATUSES }
end

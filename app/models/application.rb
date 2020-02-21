class Application < ApplicationRecord
  belongs_to :position
  belongs_to :candidate
  # belongs_to :recruiter
  has_one :scorecard

  validates :position_id, uniqueness: true
  validates :candidate_id, uniqueness: true
end

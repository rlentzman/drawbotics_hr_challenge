class Application < ApplicationRecord
  belongs_to :position
  belongs_to :candidate
  # belongs_to :recruiter
  has_one :scorecard

  validates_uniqueness_of :position, scope: :candidate
end

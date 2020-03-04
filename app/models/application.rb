class Application < ApplicationRecord
  belongs_to :position
  belongs_to :candidate
  # belongs_to :recruiter
  has_one :scorecard

  validates_uniqueness_of :position, scope: :candidate

  # STATUSES = application.position.top_recruiters
  # validates :recruiter, inclusion: { in: STATUSES }

end

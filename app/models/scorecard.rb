class Scorecard < ApplicationRecord
  belongs_to :candidate
  belongs_to :user
  belongs_to :position
end

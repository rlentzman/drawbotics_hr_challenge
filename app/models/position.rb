class Position < ApplicationRecord
  belongs_to :user, optional: true
  has_many :applications, dependent: :destroy
  has_many :candidates, through: :applications
  has_many :position_skills, dependent: :destroy
  has_many :skills, through: :position_skills
  has_many :scorecards
  validates :title, presence: true
  validates :company, presence: true

  # attr_accessor :title

  # def to_label
  #   "#{title}"
  # end

  STATUSES = ["junior", "mid", "senior"]
  validates :seniority, inclusion: { in: STATUSES }
end

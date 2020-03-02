class Recruiter < ApplicationRecord
  store_accessor :skills_match
  # serialize :skills_match, Hash
  # has_many :applications
  has_many :appointments
  # has_many :candidates, through: :applications
  # has_many :positions, through: :applications
  has_many :recruiter_skills, dependent: :destroy
  has_many :skills, through: :recruiter_skills

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :seniority, presence: true


  STATUSES = ["junior", "mid", "senior"]
  validates :seniority, inclusion: { in: STATUSES }
end

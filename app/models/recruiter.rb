class Recruiter < ApplicationRecord
  has_many :applications
  has_many :appointments
  has_many :candidates, through: :applications
  has_many :recruiter_skills
  has_many :skills, through: :recruiter_skills

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :seniority, presence: true
end

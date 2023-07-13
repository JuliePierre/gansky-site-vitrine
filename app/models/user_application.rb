class UserApplication < ApplicationRecord
  belongs_to :flat

  validates :applicant_name, presence: true
  validates :applicant_email, presence: true
  validates :applicant_phone_number, presence: true
  validates :applicant_infos, presence: true
  validates :warrant, inclusion: { in: [true, false] }
  validates :visit_needed, inclusion: { in: [true, false] }
end

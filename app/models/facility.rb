class Facility < ApplicationRecord
  has_many :flat_facilities, dependent: :destroy
  has_many :flats, through: :flat_facilities
  accepts_nested_attributes_for :flat_facilities

  # has_attachment :icon
  has_one_attached :icon
end

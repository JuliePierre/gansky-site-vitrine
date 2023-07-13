class Medium < ApplicationRecord
  # has_attachment :photo
  has_one_attached :photo
  validates :name, presence: true
end

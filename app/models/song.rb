class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true, length: { maximum: 30}
  validates :year_of_release, presence: true, length: { maximum: 4}
end

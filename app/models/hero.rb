class Hero < ApplicationRecord
  validates :name, presence: true

  scope :search, ->(name) { where("LOWER(name) LIKE ?", "%#{name.downcase}%") if name.present? }
  scope :sorted_by_name, -> { order(:name) }
end

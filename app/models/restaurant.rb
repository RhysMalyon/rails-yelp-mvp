class Restaurant < ApplicationRecord
  CATEGORY = %w[Chinese Italian Japanese French Belgian].freeze

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
end

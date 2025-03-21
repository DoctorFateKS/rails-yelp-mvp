# frozen_string_literal: true

# Model de Review avec validation
class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }

  belongs_to :restaurant
end

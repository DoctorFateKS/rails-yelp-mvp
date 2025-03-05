# frozen_string_literal: true

# Model du Restaurant avec validation des données
class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }

  has_many :reviews, dependent: :destroy
end

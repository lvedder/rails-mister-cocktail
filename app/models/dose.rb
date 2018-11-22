class Dose < ApplicationRecord
  validates :description, presence: true, allow_blank: false
  validates :ingredient, uniqueness: { scope: [:cocktail] }
  belongs_to :cocktail
  belongs_to :ingredient
end

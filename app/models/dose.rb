# frozen_string_literal: true

class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient } #[cocktail, ingredient] pairings should be unique
end

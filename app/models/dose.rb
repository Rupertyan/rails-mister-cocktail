class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

validates :description, presence: true
validates :ingredient, uniqueness: { scope: :cocktail,
    message: "ingredients should be unique for given cocktail" }
end

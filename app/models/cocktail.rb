class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
  has_attachment :photo

  validates :name, uniqueness: true, presence: true
end

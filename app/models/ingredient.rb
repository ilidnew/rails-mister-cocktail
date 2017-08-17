class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cockatils, through: :doses

  validates :name, uniqueness: true, presence: true
end

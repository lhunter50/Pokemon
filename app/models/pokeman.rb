class Pokeman < ApplicationRecord
  belongs_to :stat
  belongs_to :type
  validates :pokemonName, :entryNumber, presence: true
  validates :entryNumber, :generation, numericality: {only_integer: true}
  validates :pokemonName, uniqueness: true
end

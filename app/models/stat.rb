class Stat < ApplicationRecord
  has_many :pokemans
  validates :totalStats, :hp, :attack, :defense, :spatk, :spdef, :speed, presence: true
  validates :totalStats, :hp, :attack, :defense, :spatk, :spdef, :speed, numericality: { only_integer: true }
end

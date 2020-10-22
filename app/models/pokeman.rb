class Pokeman < ApplicationRecord
  belongs_to :Stats
  belongs_to :Type
end

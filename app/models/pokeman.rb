class Pokeman < ApplicationRecord
  belongs_to :stat
  belongs_to :type
end

class Civ < ApplicationRecord
  # Direct associations

  has_many   :factions,
             :dependent => :destroy

  # Indirect associations

  # Validations

end

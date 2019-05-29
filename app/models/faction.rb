class Faction < ApplicationRecord
  # Direct associations

  belongs_to :leader

  belongs_to :civ

  # Indirect associations

  # Validations

end

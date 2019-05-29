class Match < ApplicationRecord
  # Direct associations

  belongs_to :faction01,
             :class_name => "Faction"

  # Indirect associations

  # Validations

end

class Match < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "User"

  belongs_to :map

  belongs_to :faction01,
             :class_name => "Faction"

  # Indirect associations

  # Validations

end

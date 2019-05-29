class Faction < ApplicationRecord
  # Direct associations

  has_many   :matches,
             :foreign_key => "faction01_id",
             :dependent => :destroy

  belongs_to :leader

  belongs_to :civ

  # Indirect associations

  # Validations

end

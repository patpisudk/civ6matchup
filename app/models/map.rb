class Map < ApplicationRecord
  # Direct associations

  has_many   :matches,
             :dependent => :destroy

  # Indirect associations

  # Validations

end

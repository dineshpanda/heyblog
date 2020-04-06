class Jpg < ApplicationRecord
  # Direct associations

  belongs_to :photo

  # Indirect associations

  has_one    :article,
             :through => :photo,
             :source => :article

  # Validations

  # Scopes

end

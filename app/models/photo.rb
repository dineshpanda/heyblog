class Photo < ApplicationRecord
  # Direct associations

  has_many   :jpgs,
             :dependent => :destroy

  belongs_to :comment

  # Indirect associations

  has_one    :article,
             :through => :comment,
             :source => :article

  # Validations

  # Scopes

  scope :pub, -> { where(photos: { public_visibility: [true, false] }) }

end

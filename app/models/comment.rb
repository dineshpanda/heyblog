class Comment < ApplicationRecord
  # Direct associations

  has_many   :photos,
             -> { pub },
             :dependent => :destroy

  belongs_to :article

  # Indirect associations

  # Validations

  # Scopes

  scope :deleted_comments, -> { where('comments.auto_removal_date <= :query', query: '2020-04-06T00:00:00+00:00' ) }

end

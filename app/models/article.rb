class Article < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :photos,
             :through => :comments,
             :source => :photos

  has_many   :jpgs,
             :through => :photos,
             :source => :jpgs

  # Validations

  # Scopes

  scope :second_scope, -> { where(articles: { created_at: '2020-04-15T22:42:00+00:00' }) }

  scope :first_scope, -> { where(articles: { publish_time: '2020-04-06 18:00:00 +0530' }).not.where('articles.created_at <= :query', query: '2020-04-29T12:10:00+00:00' ) }

end

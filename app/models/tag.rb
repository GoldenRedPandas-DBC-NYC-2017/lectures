class Tag < ApplicationRecord
  # Remember to create a migration!
  has_many :article_tags
  has_many :articles, through: :article_tags
end

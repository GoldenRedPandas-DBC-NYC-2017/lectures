class Article < ApplicationRecord
  # Remember to create a migration!
  validates :title, :content, presence: true

  has_many :article_tags
  has_many :tags, through: :article_tags
end

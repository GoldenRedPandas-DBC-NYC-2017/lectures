class ArticleTag < ApplicationRecord
  # Remember to create a migration!
  belongs_to :article
  belongs_to :tag
end

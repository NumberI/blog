class Comment < ActiveRecord::Base
  validates :body, length: {minimum: 3, maximum: 4000}
  belongs_to :article
end

class Article < ActiveRecord::Base
  validates :title, length: {minimum: 2, maximum: 140}, presence: true
  validates :text, length: {minimum: 3, maximum: 4000}, presence: true
  has_many :comments
  
  def subject
    title
  end
  
  def last_comment
    comments.last
  end
end

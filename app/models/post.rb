class Post < ApplicationRecord
  belongs_to :author

  validates :title, presence: true
  validates :body, presence: true

  def author_email
    Author.find(self.author_id).email
  end
end

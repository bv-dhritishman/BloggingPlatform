class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 5 }

  def user_email
  	User.find(self.user_id).email
  	# self.user_id
  end
end

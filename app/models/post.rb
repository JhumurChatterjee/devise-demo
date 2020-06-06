class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  belongs_to :user

  validates :title, :body, presence: true, length: { maximum: 255 }

  def self.include_resources
    includes(:comments)
  end
end

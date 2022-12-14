class Comic < ApplicationRecord
  belongs_to  :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image
  validates :title, presence: true
  validates :image, presence: true
  validates :body, presence: true, length: { maximum: 200 }
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end

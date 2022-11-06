class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :comics, dependent: :destroy
   has_many :comments, dependent: :destroy
   has_many :favorites, dependent: :destroy
   attachment :profile_image
   validates :name, presence: true, uniqueness: true, length: { in: 2..20 }
   validates :introduction, length: { maximum: 50 }
end

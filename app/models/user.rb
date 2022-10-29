class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :comics, dependent: :destroy
   has_many :comments, dependent: :destroy
   has_many :favorites, dependent: :destroy
end

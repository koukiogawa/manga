class Comic < ApplicationRecord
  belongs_to  :user
  attachment :image
end

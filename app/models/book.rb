class Book < ApplicationRecord

  belongs_to :user
  attachment :image

  def user
    return User.find_by(id: self.user_id)
  end
  
end

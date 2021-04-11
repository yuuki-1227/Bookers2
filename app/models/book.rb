class Book < ApplicationRecord

  belongs_to :user
  attachment :profile_image

  def user
    return User.find_by(id: self.user_id)
  end

end

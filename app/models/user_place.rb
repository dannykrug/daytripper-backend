class UserPlace < ApplicationRecord
  belongs_to :place
  belongs_to :user


  def formatted_json
    {
      userPlace: self,
      place: self.place,
      user: self.user
    }
  end

end

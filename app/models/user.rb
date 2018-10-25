class User < ApplicationRecord
  has_many :user_places
  has_many :places, through: :user_places


  def formatted_json
    {
      user: self,
      userPlaces: user_places.map {|userPlace| userPlace.formatted_json}
    }
  end

end

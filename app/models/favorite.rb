class Favorite < ApplicationRecord

    belongs_to :user
    belongs_to :car

    validates :car_id, uniqueness: { scope: :user_id, message: "This is already in your favorites"}

end

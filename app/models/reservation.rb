class Reservation < ActiveRecord::Base
belongs_to :restaraunt, foreign_key: :restaraunt_id

end
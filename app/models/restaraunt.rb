class Restaraunt < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :user , foreign_key: :user_id
  has_many :reservations
  has_many :restaraunt_categories
  has_many :categories, :through => :restaraunt_categories
  validates :name, presence: true, uniqueness: true
#validates :user_id, presence: true

#make the query, place it in a scope, then call it.
#scope :name_symbol, -> {where,order,limit(some_parameter)}
#The queries defined in a scope are only evaluated whenever the scope is invoked.
#Categories.restaraunts_min

end


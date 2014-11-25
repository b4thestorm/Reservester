class Category < ActiveRecord::Base
has_many :restaraunt_categories 
has_many :restaraunts, :through => :restaraunt_categories
end
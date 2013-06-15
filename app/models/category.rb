class Category < ActiveRecord::Base
  attr_accessible :name, :menu_ids
  
  has_and_belongs_to_many :menus
  
end

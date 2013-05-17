class Menu < ActiveRecord::Base
  attr_accessible :description, :food_categories, :image_url, :rest_name
end

class Menu < ActiveRecord::Base
  attr_accessible :description, :food_categories, :image_url, :rest_name, :category_ids, :user_ids
  
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users
  
  
  
end

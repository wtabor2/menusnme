class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :first_name, :last_name, :profile_name, :menu_ids
  # attr_accessible :title, :body
  
  has_and_belongs_to_many :menus
  
  validates :first_name, presence: true
  
  validates :last_name, presence: true
  
  validates :profile_name, presence: true, uniqueness: true,
    format: {
    with: /^[a-zA-Z0-9_-]+$/,
    message: 'Must be formatted correctly.'
  }
    
  def full_name
   first_name + " " + last_name
  end
  
  
  def add_menu(menu)
    :menu_ids << menu
  end
  
  
end

class User < ActiveRecord::Base
has_many :posts, :foreign_key => "user_id"
has_many:comments
include Gravtastic
  gravtastic  
# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
def to_s
email
end

end

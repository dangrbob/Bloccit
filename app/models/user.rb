class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
<<<<<<< HEAD
  has_many :posts    
=======
  has_many :posts
>>>>>>> checkpiont-37-authenticate2
end

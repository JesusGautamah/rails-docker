class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  and 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,
         :confirmable, :lockable, :timeoutable, :trackable
end

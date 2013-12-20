class User < ActiveRecord::Base
  validates :email, :presence =>true, :uniqueness => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true

  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin
  # attr_accessible :title, :body
end

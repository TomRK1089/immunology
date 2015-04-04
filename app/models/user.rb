class User < ActiveRecord::Base
  attr_accessor :username

  has_one :system
  has_many :cells, through: :system
  has_many :viri, through: :system

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end

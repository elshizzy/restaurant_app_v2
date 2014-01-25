class User < ActiveRecord::Base
  has_many :opinions, :dependent => :destroy
  has_many :restaurants, :through => :opinions
  accepts_nested_attributes_for :opinions, :allow_destroy => true
  accepts_nested_attributes_for :restaurants
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end

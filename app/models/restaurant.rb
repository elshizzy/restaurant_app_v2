class Restaurant < ActiveRecord::Base
	has_many :opinions, :dependent => :destroy
	has_many :users, :through => :opinions
end

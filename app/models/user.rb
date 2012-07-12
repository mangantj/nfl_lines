class User < ActiveRecord::Base
  has_many :picks
  attr_accessible :first_name, :last_name, :email, :password
end

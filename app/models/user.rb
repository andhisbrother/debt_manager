class User < ActiveRecord::Base
  attr_accessible :email, :password
  has_many :debts
end

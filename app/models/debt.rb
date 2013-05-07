class Debt < ActiveRecord::Base
  attr_accessible :name, :amount, :repaid

  validates :name, :presence => true
  validates :amount, :repaid, :presence => true, :numericality => { :greater_than_or_equal_to => 0 } 

end

class Debt < ActiveRecord::Base
  attr_accessible :name, :amount, :repaid, :user_id

  validates :name, :presence => true
  validates :amount, :repaid, :presence => true, :numericality => { :greater_than_or_equal_to => 0 } 

  def percentage
  	self.repaid / self.amount * 100
  end

  paginates_per 3

end

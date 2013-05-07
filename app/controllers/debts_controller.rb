class DebtsController < ApplicationController
  def index
  	@debts = Debt.all
  end

  def new
  	@debt = Debt.new
  end

  def create
  	@debt = Debt.new(params[:debt])
  	if @debt.save
  		redirect_to debts_url
  	else
  		render :new
  	end
  end

  def edit
  	@debt = Debt.find params[:id]
  end

  def update
  	@debt = Debt.find params[:id]
  	@debt = :amount - :repaid 
  	if 
  		@debt.update_attributes params[:debt]
  		redirect_to debts_url
  	else 
  		render :edit
  	end
  end
end

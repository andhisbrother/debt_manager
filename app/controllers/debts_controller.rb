class DebtsController < ApplicationController
  
  before_filter :require_login

  def index
  	@debts = Debt.page(params[:page])
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
  	 
  	if 
  		@debt.update_attributes params[:debt]
  		redirect_to debts_url
  	else 
  		render :edit
  	end
  end

  def destroy
    @debt = Debt.find params[:id]
    @debt.destroy
    redirect_to debts_url
  end

end

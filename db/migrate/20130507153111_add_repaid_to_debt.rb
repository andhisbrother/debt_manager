class AddRepaidToDebt < ActiveRecord::Migration
  def change
    add_column :debts, :repaid, :decimal
  end
end

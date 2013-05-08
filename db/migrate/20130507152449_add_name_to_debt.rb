class AddNameToDebt < ActiveRecord::Migration
  def change
    add_column :debts, :name, :string
  end
end

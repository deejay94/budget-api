class RemoveActualFromBudgets < ActiveRecord::Migration[5.1]
  def change
    remove_column :budgets, :actual, :integer
  end
end

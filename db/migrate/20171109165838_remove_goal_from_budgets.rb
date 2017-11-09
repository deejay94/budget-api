class RemoveGoalFromBudgets < ActiveRecord::Migration[5.1]
  def change
    remove_column :budgets, :goal, :integer
  end
end

class AddActualToBudgets < ActiveRecord::Migration[5.1]
  def change
    add_column :budgets, :actual, :integer
  end
end

class BudgetSerializer < ActiveModel::Serializer
  attributes :name, :goal, :actual, :id
end

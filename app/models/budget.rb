class Budget < ApplicationRecord
  belongs_to :user

  validates :name, :goal, :user, presence: true
end

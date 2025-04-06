class Trip < ApplicationRecord
  belongs_to :user
  has_many :participants
  has_many :expenses
end

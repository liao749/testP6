class Expense < ApplicationRecord
  belongs_to :trip, foreign_key: "tripName_id"
  belongs_to :payer, class_name: "User"
  has_and_belongs_to_many :participants
end

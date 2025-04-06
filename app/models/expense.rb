class Expense < ApplicationRecord
  belongs_to :tripName
  belongs_to :payer, class_name: "Participant"
  has_and_belongs_to_many :participants
end

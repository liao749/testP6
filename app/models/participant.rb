class Participant < ApplicationRecord
  belongs_to :tripName
  belongs_to :user
  has_and_belongs_to_many :expenses
  has_many :expenses_paid, class_name :"Expense", foreign_key :"payer_id"
end

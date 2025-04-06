class Participant < ApplicationRecord
  belongs_to :trip
  belongs_to :user, optional: true
  has_many :expenses_paid, class_name: 'Expense', foreign_key: 'payer_id'
  has_and_belongs_to_many :expenses
end

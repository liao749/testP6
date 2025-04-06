class Expense < ApplicationRecord
  belongs_to :tripName
  belongs_to :payer
end

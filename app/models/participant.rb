class Participant < ApplicationRecord
  belongs_to :trip, foreign_key: "tripName_id"
  belongs_to :user
  has_and_belongs_to_many :expenses
end

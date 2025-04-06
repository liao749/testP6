class Participant < ApplicationRecord
  belongs_to :tripName
  belongs_to :user
end

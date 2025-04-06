class User < ApplicationRecord
  has_many :trips
  has_many :participants
  has_many :expenses, foreign_key: "payer_id"
end

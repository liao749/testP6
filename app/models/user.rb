class User < ApplicationRecord
  has_many :trips
  has_many :participants
  has_many :expenses, foreign_key: "payer_id"
  validates :name, presence:true, length:{ minimum: 1,maximum: 20}
   validates :email, presence:true, length:{ maximum: 100},
   uniqueness:true,format:{with:
   /\A[A-Za-z]+\.\d+@osu\.edu\Z/i }
end

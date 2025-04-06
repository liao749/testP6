class Trip < ApplicationRecord
  belongs_to :user
  has_many :participants, dependent: :destroy
  has_many :expenses, dependent: :destroy
end

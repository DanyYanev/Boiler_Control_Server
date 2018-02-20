class Value < ApplicationRecord
  belongs_to :user

  validates :key, :presence => true

  validates :value, :presence => true

  validates :user_id, :presence => true
end

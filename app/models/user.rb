class User < ApplicationRecord
  has_many :values, :dependent => :destroy

  accepts_nested_attributes_for :values, update_only: true 
end

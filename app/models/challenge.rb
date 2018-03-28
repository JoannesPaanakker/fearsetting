class Challenge < ApplicationRecord
    belongs_to :user
    has_many :fears, dependent: :destroy
    has_many :benefits, dependent: :destroy
    has_many :preventions, through: :fear 
    has_many :fixes, through: :fear
    has_one :benefit
    accepts_nested_attributes_for :benefit
end

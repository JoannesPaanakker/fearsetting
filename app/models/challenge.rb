class Challenge < ApplicationRecord
    belongs_to :user
    has_many :fears, dependent: :destroy
    has_many :benefits, dependent: :destroy
end

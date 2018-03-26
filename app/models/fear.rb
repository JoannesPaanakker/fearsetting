class Fear < ApplicationRecord
    belongs_to :challenge
    has_many :preventions, dependent: :destroy
    has_many :fixes, dependent: :destroy
end
